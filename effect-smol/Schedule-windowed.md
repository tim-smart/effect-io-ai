Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.windowed

A schedule that divides the timeline to `interval`-long windows, and sleeps
until the nearest window boundary every time it recurs.

For example, `Schedule.windowed("10 seconds")` would produce a schedule as
follows:

```
     10s        10s        10s       10s
|----------|----------|----------|----------|
|action------|sleep---|act|-sleep|action----|
```

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Execute tasks at regular intervals aligned to window boundaries
const windowSchedule = Schedule.windowed("5 seconds")

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      const now = new Date().toISOString()
      yield* Console.log(`Window task executed at: ${now}`)
      return "window-task"
    }),
    windowSchedule.pipe(Schedule.take(4))
  )
})
```

**Signature**

```ts
declare const windowed: (interval: Duration.Input) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3213)

Since v2.0.0