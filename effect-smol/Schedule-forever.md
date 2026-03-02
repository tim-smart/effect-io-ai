Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.forever

Returns a new `Schedule` that will recur forever.

The output of the schedule is the current count of its repetitions thus far
(i.e. `0, 1, 2, ...`).

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// A schedule that runs forever with no delay
const infiniteSchedule = Schedule.forever

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Running forever...")
      return "continuous-task"
    }),
    infiniteSchedule.pipe(Schedule.take(5)) // Limit for demo
  )
})
```

**Signature**

```ts
declare const forever: Schedule<number, unknown, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3224)

Since v2.0.0