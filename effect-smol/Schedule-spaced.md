Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.spaced

Returns a schedule that recurs continuously, each repetition spaced the
specified duration from the last run.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Basic spaced schedule - runs every 2 seconds
const everyTwoSeconds = Schedule.spaced("2 seconds")

// Heartbeat that runs indefinitely with fixed spacing
const heartbeat = Effect.gen(function*() {
  yield* Console.log(`Heartbeat at ${new Date().toISOString()}`)
}).pipe(
  Effect.repeat(everyTwoSeconds)
)

// Limited repeat - run only 5 times with 1-second spacing
const limitedTask = Effect.gen(function*() {
  yield* Console.log("Executing scheduled task...")
  yield* Effect.sleep("500 millis") // simulate work
  return "Task completed"
}).pipe(
  Effect.repeat(
    Schedule.spaced("1 second").pipe(Schedule.take(5))
  )
)

// Simple spaced schedule with limited repetitions
const limitedSpaced = Schedule.spaced("100 millis").pipe(
  Schedule.compose(Schedule.recurs(5)) // at most 5 times
)

const program = Effect.gen(function*() {
  yield* Console.log("Starting spaced execution...")

  yield* Effect.repeat(
    Effect.succeed("work item"),
    limitedSpaced
  )

  yield* Console.log("Completed executions")
})
```

**Signature**

```ts
declare const spaced: (duration: Duration.Input) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2654)

Since v2.0.0