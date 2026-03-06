Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.addDelay

Returns a new `Schedule` that adds the delay computed by the specified
effectful function to the the next recurrence of the schedule.

**Example**

```ts
import { Console, Data, Duration, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Add random jitter to schedule delays
const jitteredSchedule = Schedule.addDelay(
  Schedule.exponential("100 millis").pipe(Schedule.take(5)),
  (output) =>
    // Add random jitter between 0-50ms
    Effect.succeed(Duration.millis(Math.random() * 50))
)

const jitterProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Task executed at ${new Date().toISOString()}`)
      return "jittered task"
    }),
    jitteredSchedule.pipe(
      Schedule.tapOutput((delay) =>
        Console.log(`Base delay with jitter applied`)
      )
    )
  )
})

// Add adaptive delay based on execution count
const adaptiveSchedule = Schedule.addDelay(
  Schedule.recurs(6),
  (executionCount) =>
    // Increase delay as execution count grows
    Effect.succeed(Duration.millis(executionCount * 200))
)

const adaptiveProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Adaptive delay task")
      return "adaptive"
    }),
    adaptiveSchedule.pipe(
      Schedule.tapOutput((count) =>
        Console.log(`Execution ${count + 1} with adaptive delay`)
      )
    )
  )
})

// Add effectful delay computation
const dynamicSchedule = Schedule.addDelay(
  Schedule.spaced("1 second").pipe(Schedule.take(4)),
  (executionNumber) =>
    // Simulate checking system load and return additional delay
    Effect.succeed(Duration.millis(Math.random() > 0.7 ? 2000 : 500))
)

const dynamicProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Dynamic delay task")
      return "dynamic"
    }),
    dynamicSchedule
  )
})

// Add delay based on previous execution results (30% extra)
const resultBasedSchedule = Schedule.addDelay(
  Schedule.fibonacci("200 millis").pipe(Schedule.take(5)),
  (fibonacciDelay) =>
    Effect.succeed(Duration.millis(Duration.toMillis(fibonacciDelay) * 0.3))
)

const resultProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Result-based delay task")
      return Math.random()
    }),
    resultBasedSchedule.pipe(
      Schedule.tapOutput((delay) => Console.log(`Fibonacci delay: ${delay}`))
    )
  )
})

// Combine with retry for progressive backoff
const progressiveRetrySchedule = Schedule.addDelay(
  Schedule.exponential("50 millis").pipe(Schedule.take(4)),
  () => Effect.succeed(Duration.millis(100)) // Fixed additional delay
)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      if (attempt < 5) {
        return yield* Effect.fail(new RetryAttemptError({ message: `Attempt ${attempt} failed` }))
      }
      return `Success on attempt ${attempt}`
    }),
    progressiveRetrySchedule
  )

  yield* Console.log(`Final result: ${result}`)
})
```

**Signature**

```ts
declare const addDelay: { <Output, Error2 = never, Env2 = never>(f: (output: Output) => Effect<Duration.Input, Error2, Env2>): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, f: (output: Output) => Effect<Duration.Input, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L638)

Since v2.0.0