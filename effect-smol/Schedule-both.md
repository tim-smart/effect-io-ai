Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.both

Combines two `Schedule`s by recurring if both of the two schedules want
to recur, using the maximum of the two durations between recurrences and
outputting a tuple of the outputs of both schedules.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Both schedules must want to continue for the combined schedule to continue
const timeLimit = Schedule.spaced("1 second").pipe(Schedule.take(5)) // max 5 times
const attemptLimit = Schedule.recurs(3) // max 3 attempts

// Continues only while BOTH schedules want to continue (intersection/AND logic)
const bothSchedule = Schedule.both(timeLimit, attemptLimit)
// Outputs: [time_result, attempt_count] tuple

const program = Effect.gen(function*() {
  const results = yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Task executed at ${new Date().toISOString()}`)
      return "task completed"
    }),
    bothSchedule.pipe(
      Schedule.tapOutput(([timeResult, attemptResult]) =>
        Console.log(`Time: ${timeResult}, Attempts: ${attemptResult}`)
      )
    )
  )

  yield* Console.log("Completed all executions")
})

// Both with different delay strategies - uses maximum delay
const fastSchedule = Schedule.fixed("500 millis").pipe(Schedule.take(4))
const slowSchedule = Schedule.spaced("2 seconds").pipe(Schedule.take(6))

// Will use the slower (maximum) delay and stop when first schedule exhausts
const conservativeSchedule = Schedule.both(fastSchedule, slowSchedule)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)

      if (attempt < 3) {
        return yield* Effect.fail(new Error(`Attempt ${attempt} failed`))
      }

      return `Success on attempt ${attempt}`
    }),
    conservativeSchedule
  )

  yield* Console.log(`Final result: ${result}`)
})

// Both provides intersection semantics (AND logic)
// Compare with either which provides union semantics (OR logic)
```

**Signature**

```ts
declare const both: { <Output2, Input2, Error2, Env2, Output>(other: Schedule<Output2, Input2, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L876)

Since v2.0.0