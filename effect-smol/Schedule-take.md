Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.take

Returns a new `Schedule` that takes at most the specified number of outputs
from the schedule. Once the specified number of outputs is reached, the
schedule will stop.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class RetryAttemptError extends Data.TaggedError("RetryAttemptError")<{ readonly message: string }> {}

// Limit an infinite schedule to run only 5 times
const limitedHeartbeat = Schedule.spaced("1 second").pipe(
  Schedule.take(5) // Will stop after 5 executions
)

const heartbeatProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Heartbeat at ${new Date().toISOString()}`)
      return "pulse"
    }),
    limitedHeartbeat
  )

  yield* Console.log("Heartbeat sequence completed")
})

// Limit retry attempts to a specific number
const limitedRetry = Schedule.exponential("100 millis").pipe(
  Schedule.take(3) // At most 3 retry attempts
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

// Combine take with other schedule operations
const samplingSchedule = Schedule.fixed("500 millis").pipe(
  Schedule.take(10), // Sample exactly 10 times
  Schedule.map((count) => Effect.succeed(`Sample #${count + 1}`))
)

const samplingProgram = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      const value = Math.random()
      yield* Console.log(`Sampled value: ${value.toFixed(3)}`)
      return value
    }),
    samplingSchedule.pipe(
      Schedule.tapOutput((label) => Console.log(`Completed: ${label}`))
    )
  )
})
```

**Signature**

```ts
declare const take: { (n: number): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>; <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>, n: number): Schedule<Output, Input, Error, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3006)

Since v2.0.0