Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.tapOutput

Returns a new `Schedule` that allows execution of an effectful function for
every output of the schedule, but does not alter the inputs and outputs of
the schedule.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Log schedule outputs for debugging/monitoring
const monitoredSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.take(5),
  Schedule.tapOutput((delay) => Console.log(`Next delay will be: ${delay}`))
)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      if (attempt < 4) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }
      return `Success on attempt ${attempt}`
    }),
    monitoredSchedule
  )

  yield* Console.log(`Final result: ${result}`)
})

// Tap output for metrics collection
const metricsSchedule = Schedule.spaced("1 second").pipe(
  Schedule.take(10),
  Schedule.tapOutput((executionCount) =>
    Effect.gen(function*() {
      // Simulate metrics collection
      yield* Console.log(`Recording metric: execution_count=${executionCount}`)
      // In real code, this might send to monitoring system
    })
  )
)

// Tap output with conditional side effects
const alertingSchedule = Schedule.fibonacci("200 millis").pipe(
  Schedule.take(8),
  Schedule.tapOutput((delay) =>
    Effect.gen(function*() {
      const delayMs = delay.toString()
      if (delayMs.includes("1000")) { // Alert on delays >= 1 second
        yield* Console.log(`🚨 High delay detected: ${delay}`)
      }
    })
  )
)

const healthCheckProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Performing health check...")
      // Simulate health check
      return Math.random() > 0.7 ? "healthy" : "degraded"
    }),
    alertingSchedule
  )
})

// Chain multiple taps for different purposes
const comprehensiveSchedule = Schedule.fixed("500 millis").pipe(
  Schedule.take(6),
  Schedule.tapOutput((count) => Console.log(`Execution ${count + 1}`)),
  Schedule.tapOutput((count) =>
    count % 3 === 0
      ? Console.log("🎯 Checkpoint reached!")
      : Effect.void
  )
)
```

**Signature**

```ts
declare const tapOutput: { <Output, X, Error2, Env2>(f: (output: Output) => Effect<X, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, X, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, f: (output: Output) => Effect<X, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2840)

Since v2.0.0