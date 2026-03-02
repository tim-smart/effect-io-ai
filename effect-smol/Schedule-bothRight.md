Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.bothRight

Combines two `Schedule`s by recurring if both of the two schedules want
to recur, using the maximum of the two durations between recurrences and
outputting the result of the right schedule (i.e. `other`).

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Combine two schedules, keeping right output
const leftSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.map(() => Effect.succeed("left-result"))
)
const rightSchedule = Schedule.spaced("50 millis").pipe(
  Schedule.map(() => Effect.succeed("right-result"))
)

const combined = Schedule.bothRight(leftSchedule, rightSchedule)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-done"
    }),
    combined.pipe(Schedule.take(3))
  )
})
```

**Signature**

```ts
declare const bothRight: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<Output, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L971)

Since v2.0.0