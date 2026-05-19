Package: `effect`<br />
Module: `Effect`<br />

## Effect.schedule

Runs an effect repeatedly according to a schedule and returns the schedule's
final output.

**Details**

The schedule is first stepped with `undefined`. After each successful
execution, the effect's success value is fed to the schedule to decide
whether to run again. The returned effect fails if the effect or schedule
fails, and otherwise succeeds with the schedule output when the schedule
completes.

**Example** (Usage)

```ts
import { Console, Effect, Schedule } from "effect"

const task = Effect.gen(function*() {
  yield* Console.log("Task executing...")
  return Math.random()
})

// Repeat 3 times with 1 second delay between executions
const program = Effect.schedule(
  task,
  Schedule.addDelay(Schedule.recurs(2), () => Effect.succeed("1 second"))
)

Effect.runPromise(program).then(console.log)
// Output:
// Task executing... (immediate)
// Task executing... (after 1 second)
// Task executing... (after 1 second)
// Returns the count from Schedule.recurs
```

**See**

- `scheduleFrom` for a variant that allows the schedule's decision
to depend on the result of this effect.

**Signature**

```ts
declare const schedule: { <Output, Error, Env>(schedule: Schedule<Output, unknown, Error, Env>): <A, E, R>(self: Effect<A, E, R>) => Effect<Output, E, R | Env>; <A, E, R, Output, Error, Env>(self: Effect<A, E, R>, schedule: Schedule<Output, unknown, Error, Env>): Effect<Output, E, R | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7153)

Since v2.0.0