Package: `effect`<br />
Module: `Effect`<br />

## Effect.scheduleFrom

Runs an effect repeatedly according to a schedule that is initialized with a
specific schedule input.

**Details**

`initial` is passed to the schedule before the first execution, not to the
effect itself. After each successful execution, the effect's success value is
fed back into the schedule to decide whether to continue. The returned effect
succeeds with the schedule output when the schedule completes and fails if
the effect or schedule fails.

**Example** (Scheduling from an initial value)

```ts
import { Console, Effect, Schedule } from "effect"

const task = (input: number) =>
  Effect.gen(function*() {
    yield* Console.log(`Processing: ${input}`)
    return input + 1
  })

// Start with 0, repeat 3 times
const program = Effect.scheduleFrom(
  task(0),
  0,
  Schedule.recurs(2)
)

Effect.runPromise(program).then(console.log)
// Returns the schedule count
```

**Signature**

```ts
declare const scheduleFrom: { <Input, Output, Error, Env>(initial: Input, schedule: Schedule<Output, Input, Error, Env>): <E, R>(self: Effect<Input, E, R>) => Effect<Output, E, R | Env>; <Input, E, R, Output, Error, Env>(self: Effect<Input, E, R>, initial: Input, schedule: Schedule<Output, Input, Error, Env>): Effect<Output, E, R | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7854)

Since v2.0.0