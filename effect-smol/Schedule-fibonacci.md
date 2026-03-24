Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fibonacci

A schedule that always recurs, increasing delays by summing the preceding
two delays (similar to the fibonacci sequence). Returns the current
duration between recurrences.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Basic fibonacci schedule starting with 100ms
const fibSchedule = Schedule.fibonacci("100 millis")
// Delays: 100ms, 100ms, 200ms, 300ms, 500ms, 800ms, 1300ms, ...

// Retry with fibonacci backoff for gradual increase
const retryWithFib = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Attempt ${attempt}`)

      if (attempt < 5) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }

      return `Success on attempt ${attempt}`
    }),
    Schedule.fibonacci("50 millis").pipe(
      Schedule.both(Schedule.recurs(6)), // Maximum 6 retries
      Schedule.tapOutput((delay) => Console.log(`Next retry in ${delay}`))
    )
  )

  yield* Console.log(`Final result: ${result}`)
})

// Heartbeat with fibonacci intervals (starts fast, gets slower)
const adaptiveHeartbeat = Effect.gen(function*() {
  yield* Console.log(`Heartbeat at ${new Date().toISOString()}`)
  return "pulse"
}).pipe(
  Effect.repeat(
    Schedule.fibonacci("200 millis").pipe(
      Schedule.take(8) // First 8 heartbeats
    )
  )
)

// Fibonacci vs exponential comparison
const compareSchedules = Effect.gen(function*() {
  yield* Console.log("=== Fibonacci Delays ===")
  // 100ms, 100ms, 200ms, 300ms, 500ms, 800ms

  yield* Console.log("=== Exponential Delays ===")
  // 100ms, 200ms, 400ms, 800ms, 1600ms, 3200ms

  // Fibonacci grows more slowly than exponential
})
```

**Signature**

```ts
declare const fibonacci: (one: Duration.Input) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2039)

Since v2.0.0