Package: `effect`<br />
Module: `Effect`<br />

## Effect.schedule

Repeats an effect based on a specified schedule.

**Details**

This function allows you to execute an effect repeatedly according to a given
schedule. The schedule determines the timing and number of repetitions. Each
repetition can also depend on the decision of the schedule, providing
flexibility for complex workflows. This function does not modify the effect's
success or failure; it only controls its repetition.

For example, you can use a schedule that recurs a specific number of times,
adds delays between repetitions, or customizes repetition behavior based on
external inputs. The effect runs initially and is repeated according to the
schedule.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7365)

Since v2.0.0