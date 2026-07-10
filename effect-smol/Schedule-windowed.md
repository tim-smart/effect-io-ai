Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.windowed

Schedule that divides the timeline to `interval`-long windows, and sleeps
until the nearest window boundary every time it recurs.

**Details**

For example, `Schedule.windowed("10 seconds")` would produce a schedule as
follows:

```text
     10s        10s        10s       10s
|----------|----------|----------|----------|
|action------|sleep---|act|-sleep|action----|
```

**Example** (Repeating on aligned windows)

```ts
import { Console, Effect, Schedule } from "effect"

// Execute tasks at regular intervals aligned to window boundaries
const windowSchedule = Schedule.windowed("5 seconds")

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Window task executed")
      return "window-task"
    }),
    windowSchedule.pipe(Schedule.upTo({ times: 4 }))
  )
})
```

**Signature**

```ts
declare const windowed: (interval: Duration.Input) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2090)

Since v2.0.0