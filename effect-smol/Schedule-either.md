Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.either

Combines two `Schedule`s by recurring if either of the two schedules wants
to recur, using the minimum of the two durations between recurrences and
outputting a tuple of the outputs of both schedules.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Either continues as long as at least one schedule wants to continue
const timeBasedSchedule = Schedule.spaced("2 seconds").pipe(Schedule.take(3))
const countBasedSchedule = Schedule.recurs(5)

// Continues until both schedules are exhausted (either still wants to recur)
const eitherSchedule = Schedule.either(timeBasedSchedule, countBasedSchedule)
// Outputs: [time_result, count_result] tuple

const program = Effect.gen(function*() {
  const results = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Task executed at ${new Date().toISOString()}`)
      return "task completed"
    }),
    eitherSchedule.pipe(
      Schedule.tapOutput(([timeResult, countResult]) =>
        Console.log(`Time: ${timeResult}, Count: ${countResult}`)
      )
    )
  )

  yield* Console.log(`Total executions: ${results.length}`)
})

// Either with different delay strategies
const aggressiveRetry = Schedule.exponential("100 millis").pipe(
  Schedule.take(3)
)
const fallbackRetry = Schedule.fixed("5 seconds").pipe(Schedule.take(2))

// Will use the more aggressive retry until it's exhausted, then fallback
const combinedRetry = Schedule.either(aggressiveRetry, fallbackRetry)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)

      if (attempt < 6) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }

      return `Success on attempt ${attempt}`
    }),
    combinedRetry
  )

  yield* Console.log(`Final result: ${result}`)
})

// Either provides union semantics (OR logic)
// Compare with intersect which provides intersection semantics (AND logic)
```

**Signature**

```ts
declare const either: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1757)

Since v2.0.0