Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.addDelay

Returns a new `Schedule` that adds the delay computed by the specified
effectful function to the the next recurrence of the schedule.

**Example** (Adding extra delay to a schedule)

```ts
import { Console, Data, Duration, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Add a deterministic extra delay based on the schedule output
const delayedSchedule = Schedule.addDelay(
  Schedule.exponential("100 millis").pipe(Schedule.take(5)),
  (output) =>
    Effect.succeed(Duration.millis(Duration.toMillis(output) * 0.25))
)

const repeatProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.succeed("delayed task"),
    delayedSchedule.pipe(
      Schedule.tapOutput((delay) =>
        Console.log(`Base delay: ${delay}`)
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

// Add effectful delay computation from deterministic service data
const loadByExecution = [1, 3, 2, 4] as const

const dynamicSchedule = Schedule.addDelay(
  Schedule.spaced("1 second").pipe(Schedule.take(4)),
  (executionNumber) => {
    const load = loadByExecution[executionNumber] ?? 1
    return Effect.succeed(Duration.millis(load * 100))
  }
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L623)

Since v2.0.0