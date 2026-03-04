Package: `effect`<br />
Module: `Effect`<br />

## Effect.scheduleFrom

Runs an effect repeatedly according to a schedule, starting from a specified
initial input value.

**Details**

This function allows you to repeatedly execute an effect based on a schedule.
The schedule starts with the given `initial` input value, which is passed to
the first execution. Subsequent executions of the effect are controlled by
the schedule's rules, using the output of the previous iteration as the input
for the next one.

The returned effect will complete when the schedule ends or the effect fails,
propagating the error.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7370)

Since v2.0.0