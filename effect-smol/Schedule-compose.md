Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.compose

Returns a new `Schedule` that combines two schedules by running them
sequentially. First the current schedule runs to completion, then the
other schedule runs to completion. The output is a tuple of both results.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Compose a quick retry phase followed by slower retry phase
const fastRetries = Schedule.exponential("100 millis").pipe(
  Schedule.compose(Schedule.recurs(3)) // 3 fast retries
)

const slowRetries = Schedule.exponential("2 seconds").pipe(
  Schedule.compose(Schedule.recurs(2)) // 2 slow retries
)

// Sequential composition: fast retries first, then slow retries
const composedRetry = Schedule.compose(fastRetries, slowRetries)
// Outputs: [number_from_fast_phase, number_from_slow_phase]

const program = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)

      if (attempt < 7) { // Needs both phases to succeed
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }

      return `Success on attempt ${attempt}`
    }),
    composedRetry.pipe(
      Schedule.tapOutput(([fastResult, slowResult]) =>
        Console.log(`Fast phase: ${fastResult}, Slow phase: ${slowResult}`)
      )
    )
  )

  yield* Console.log(`Final result: ${result}`)
})

// Compose different schedule types
const warmupAndMaintenance = Schedule.compose(
  Schedule.fixed("500 millis").pipe(Schedule.take(5)), // 5 warmup cycles
  Schedule.spaced("5 seconds") // then regular maintenance
)

// Progressive backoff: fixed first, then exponential
const progressiveBackoff = Schedule.compose(
  Schedule.fixed("100 millis").pipe(Schedule.take(3)), // Fixed: 100ms, 100ms, 100ms
  Schedule.exponential("500 millis").pipe(Schedule.take(3)) // Then exponential: 500ms, 1s, 2s
)
```

**Signature**

```ts
declare const compose: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<[Output, Output2], Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1134)

Since v2.0.0