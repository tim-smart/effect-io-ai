Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.tapInput

Returns a new `Schedule` that allows execution of an effectful function for
every input to the schedule, but does not alter the inputs and outputs of
the schedule.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryError extends Data.TaggedError("RetryError")<{ readonly message: string }> {}

// Log retry errors for debugging
const errorLoggingSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.take(3),
  Schedule.tapInput((error: RetryError) =>
    Console.log(`Retry triggered by error: ${String(error)}`)
  )
)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      if (attempt < 4) {
        return yield* Effect.fail(new RetryError({ message: `Network timeout on attempt ${attempt}` }))
      }
      return `Success on attempt ${attempt}`
    }),
    errorLoggingSchedule
  )

  yield* Console.log(`Final result: ${result}`)
})

// Monitor input frequency for metrics
const inputMonitoringSchedule = Schedule.spaced("1 second").pipe(
  Schedule.take(5),
  Schedule.tapInput((input: unknown) =>
    Effect.gen(function*() {
      yield* Console.log(`Processing input at ${new Date().toISOString()}`)
      yield* Console.log(`Input type: ${typeof input}`)
      // In real applications, might send metrics to monitoring system
    })
  )
)

// Input validation with side effects
const validatingSchedule = Schedule.fixed("500 millis").pipe(
  Schedule.take(4),
  Schedule.tapInput((input: any) =>
    Effect.gen(function*() {
      if (typeof input === "object" && input !== null) {
        yield* Console.log(`Valid object input: ${JSON.stringify(input)}`)
      } else {
        yield* Console.log(`Warning: Non-object input received: ${input}`)
      }
    })
  )
)

const validationProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task with validation")
      return { data: Math.random(), timestamp: Date.now() }
    }),
    validatingSchedule
  )
})

// Conditional alerting based on input
const alertingSchedule = Schedule.exponential("200 millis").pipe(
  Schedule.take(6),
  Schedule.tapInput((error: RetryError) =>
    Effect.gen(function*() {
      if (String(error).includes("critical")) {
        yield* Console.log(`🚨 CRITICAL ERROR: ${String(error)}`)
        // In real applications, might trigger alerts or notifications
      } else {
        yield* Console.log(`ℹ️ Regular error: ${String(error)}`)
      }
    })
  )
)

const alertProgram = Effect.gen(function*() {
  let attempt = 0

  yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      const isCritical = attempt === 3
      const errorType = isCritical
        ? "critical database failure"
        : "temporary network issue"
      return yield* Effect.fail(new RetryError({ message: errorType }))
    }),
    alertingSchedule
  ).pipe(
    Effect.catch((error: unknown) =>
      Console.log(`All retries exhausted: ${String(error)}`)
    )
  )
})

// Chain multiple input taps for different purposes
const comprehensiveSchedule = Schedule.fibonacci("100 millis").pipe(
  Schedule.take(5),
  Schedule.tapInput((error: RetryError) =>
    Console.log(`Error occurred: ${error._tag}`)
  ),
  Schedule.tapInput((error: RetryError) =>
    String(error).length > 20
      ? Console.log("📝 Long error message detected")
      : Effect.void
  )
)
```

**Signature**

```ts
declare const tapInput: { <Input, X, Error2, Env2>(f: (input: Input) => Effect<X, Error2, Env2>): <Output, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, X, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, f: (input: Input) => Effect<X, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2803)

Since v2.0.0