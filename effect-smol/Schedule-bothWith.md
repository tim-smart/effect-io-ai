Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.bothWith

Combines two `Schedule`s by recurring if both of the two schedules want
to recur, using the maximum of the two durations between recurrences and
outputting the result of the combination of both schedule outputs using the
specified `combine` function.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Combine two schedules with custom output combination
const leftSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.map(() => Effect.succeed("left"))
)
const rightSchedule = Schedule.spaced("50 millis").pipe(
  Schedule.map(() => Effect.succeed("right"))
)

const combined = Schedule.bothWith(
  leftSchedule,
  rightSchedule,
  (left, right) => `${left}-${right}`
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-result"
    }),
    combined.pipe(Schedule.take(3))
  )
})
```

**Signature**

```ts
declare const bothWith: { <Output2, Input2, Error2, Env2, Output, Output3>(other: Schedule<Output2, Input2, Error2, Env2>, combine: (selfOutput: Output, otherOutput: Output2) => Output3): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output3, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2, Output3>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>, combine: (selfOutput: Output, otherOutput: Output2) => Output3): Schedule<Output3, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1024)

Since v2.0.0