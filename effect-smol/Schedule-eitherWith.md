Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.eitherWith

Combines two `Schedule`s by recurring if either of the two schedules wants
to recur, using the minimum of the two durations between recurrences and
outputting the result of the combination of both schedule outputs using the
specified `combine` function.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Combine schedules with either semantics and custom combination
const primarySchedule = Schedule.exponential("100 millis").pipe(
  Schedule.map(() => Effect.succeed("primary")),
  Schedule.take(2)
)
const fallbackSchedule = Schedule.spaced("500 millis").pipe(
  Schedule.map(() => Effect.succeed("fallback"))
)

const combined = Schedule.eitherWith(
  primarySchedule,
  fallbackSchedule,
  (primary, fallback) => `${primary}+${fallback}`
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-result"
    }),
    combined.pipe(Schedule.take(5))
  )
})
```

**Signature**

```ts
declare const eitherWith: { <Output2, Input2, Error2, Env2, Output, Output3>(other: Schedule<Output2, Input2, Error2, Env2>, combine: (selfOutput: Output, otherOutput: Output2) => Output3): <Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output3, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2, Output3>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>, combine: (selfOutput: Output, otherOutput: Output2) => Output3): Schedule<Output3, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1910)

Since v2.0.0