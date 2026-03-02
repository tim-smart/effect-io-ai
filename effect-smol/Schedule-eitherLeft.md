Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.eitherLeft

Combines two `Schedule`s by recurring if either of the two schedules wants
to recur, using the minimum of the two durations between recurrences and
outputting the result of the left schedule (i.e. `self`).

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Combine two schedules with either semantics, keeping left output
const primarySchedule = Schedule.exponential("100 millis").pipe(
  Schedule.map(() => Effect.succeed("primary-result")),
  Schedule.take(2)
)
const backupSchedule = Schedule.spaced("500 millis").pipe(
  Schedule.map(() => Effect.succeed("backup-result"))
)

const combined = Schedule.eitherLeft(primarySchedule, backupSchedule)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-done"
    }),
    combined.pipe(Schedule.take(5))
  )
})
```

**Signature**

```ts
declare const eitherLeft: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<Output, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1793)

Since v2.0.0