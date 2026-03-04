Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.during

Returns a new `Schedule` that will always recur, but only during the
specified `duration` of time.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Run a task for exactly 5 seconds, regardless of how many iterations
const fiveSecondSchedule = Schedule.during("5 seconds")

const timedProgram = Effect.gen(function*() {
  const startTime = Date.now()

  yield* Effect.repeat(
    Effect.gen(function*() {
      const elapsed = Date.now() - startTime
      yield* Console.log(`Task executed after ${elapsed}ms`)
      yield* Effect.sleep("500 millis") // Each task takes 500ms
      return "task done"
    }),
    fiveSecondSchedule.pipe(
      Schedule.tapOutput((elapsedDuration) =>
        Console.log(`Total elapsed: ${elapsedDuration}`)
      )
    )
  )

  yield* Console.log("Time limit reached!")
})

// Combine with other schedules for time-bounded execution
const timeAndCountLimited = Schedule.spaced("1 second").pipe(
  Schedule.both(Schedule.during("10 seconds")), // Stop after 10 seconds OR
  Schedule.both(Schedule.recurs(15)) // 15 attempts, whichever comes first
)

// Burst execution within time window
const burstWindow = Schedule.during("3 seconds")

const burstProgram = Effect.gen(function*() {
  yield* Console.log("Starting burst execution...")

  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log(`Burst task at ${new Date().toISOString()}`)
      return Math.random()
    }),
    burstWindow
  )

  yield* Console.log("Burst window completed")
})

// Timed retry window - retry for up to 30 seconds
const timedRetry = Schedule.exponential("200 millis").pipe(
  Schedule.both(Schedule.during("30 seconds"))
)

const retryProgram = Effect.gen(function*() {
  let attempt = 0

  const result = yield* Effect.retry(
    Effect.gen(function*() {
      attempt++
      yield* Console.log(`Retry attempt ${attempt}`)

      if (Math.random() < 0.8) { // 80% failure rate
        return yield* Effect.fail(new Error(`Attempt ${attempt} failed`))
      }

      return `Success on attempt ${attempt}`
    }),
    timedRetry
  )

  yield* Console.log(`Result: ${result}`)
}).pipe(
  Effect.catch((error: unknown) => Console.log(`Timed out: ${String(error)}`))
)
```

**Signature**

```ts
declare const during: (duration: Duration.Input) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1668)

Since v4.0.0