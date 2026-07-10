Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.upTo

Returns a new `Schedule` that limits an existing schedule by elapsed
duration, number of outputs, or both.

**When to use**

Use to bound an existing schedule while preserving its output and delay
behavior. When both `duration` and `times` are specified, the schedule
stops as soon as either limit is reached.

**Gotchas**

The `times` option limits schedule outputs. When used with repeat or retry,
the effect is evaluated once before the schedule is stepped, so the total
number of evaluations can be one greater than the configured number of
outputs.

The `duration` option is based on the elapsed time observed by the schedule
step. Long-running effects can cause the duration limit to be detected on the
following schedule step.

**Example** (Limiting by duration and recurrence count)

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Limit an infinite schedule to five recurrences
const limitedHeartbeat = Schedule.spaced("1 second").pipe(
  Schedule.upTo({ times: 5 })
)

const heartbeatProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Heartbeat")
      return "pulse"
    }),
    limitedHeartbeat
  )

  yield* Console.log("Heartbeat sequence completed")
})

// Limit retry attempts by both count and elapsed time
const limitedRetry = Schedule.exponential("100 millis").pipe(
  Schedule.upTo({
    duration: "5 seconds",
    times: 3
  })
)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)

      if (attempt < 5) { // Will fail more than 3 times
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }

      return `Success on attempt ${attempt}`
    }),
    limitedRetry
  )

  yield* Console.log(`Result: ${result}`)
}).pipe(
  Effect.catch((error: unknown) =>
    Console.log(`Failed after limited retries: ${String(error)}`)
  )
)

// Empty options leave the schedule unchanged
const unchanged = Schedule.fixed("500 millis").pipe(
  Schedule.upTo({})
)
```

**Signature**

```ts
declare const upTo: { (options: { readonly duration?: Duration.Input | undefined; readonly times?: number | undefined; }): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>; <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>, options: { readonly duration?: Duration.Input | undefined; readonly times?: number | undefined; }): Schedule<Output, Input, Error, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1968)

Since v4.0.0