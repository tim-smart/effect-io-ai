Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fixed

Returns a `Schedule` that recurs on the specified fixed `interval` and
outputs the number of repetitions of the schedule so far.

If the action run between updates takes longer than the interval, then the
action will be run immediately, but re-runs will not "pile up".

```
|-----interval-----|-----interval-----|-----interval-----|
|---------action--------||action|-----|action|-----------|
```

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Fixed interval schedule - runs exactly every 1 second
const everySecond = Schedule.fixed("1 second")

// Health check that runs at fixed intervals
const healthCheck = Effect.gen(function*() {
  yield* Console.log(`Health check at ${new Date().toISOString()}`)
  yield* Effect.sleep("200 millis") // simulate health check work
  return "healthy"
}).pipe(
  Effect.repeat(Schedule.fixed("2 seconds").pipe(Schedule.take(5)))
)

// Difference between fixed and spaced:
// - fixed: maintains constant rate regardless of action duration
// - spaced: waits for the duration AFTER each action completes

const longRunningTask = Effect.gen(function*() {
  yield* Console.log("Task started")
  yield* Effect.sleep("1.5 seconds") // Longer than interval
  yield* Console.log("Task completed")
  return "done"
})

// Fixed schedule: if task takes 1.5s but interval is 1s,
// next execution happens immediately (no pile-up)
const fixedSchedule = longRunningTask.pipe(
  Effect.repeat(Schedule.fixed("1 second").pipe(Schedule.take(3)))
)

// Comparing with spaced (waits 1s AFTER each task)
const spacedSchedule = longRunningTask.pipe(
  Effect.repeat(Schedule.spaced("1 second").pipe(Schedule.take(3)))
)

const program = Effect.gen(function*() {
  yield* Console.log("=== Fixed Schedule Demo ===")
  yield* fixedSchedule

  yield* Console.log("=== Spaced Schedule Demo ===")
  yield* spacedSchedule
})
```

**Signature**

```ts
declare const fixed: (interval: Duration.Input) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2177)

Since v2.0.0