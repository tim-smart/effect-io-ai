Package: `effect`<br />
Module: `Effect`<br />

## Effect.repeat

Repeats an effect based on a specified schedule or until the first failure.

**When to use**

Use to rerun an effect after successful executions.

**Details**

This function executes an effect repeatedly according to the given schedule.
Each repetition occurs after the initial execution of the effect, meaning
that the schedule determines the number of additional repetitions. For
example, using `Schedule.once` will result in the effect being executed twice
(once initially and once as part of the repetition).

If the effect succeeds, it is repeated according to the schedule. If it
fails, the repetition stops immediately, and the failure is returned.

The schedule can also specify delays between repetitions, making it useful
for tasks like retrying operations with backoff, periodic execution, or
performing a series of dependent actions.

You can combine schedules for more advanced repetition logic, such as adding
delays, limiting recursions, or dynamically adjusting based on the outcome of
each execution.

**Gotchas**

The source effect is always evaluated once before the schedule is stepped.
The schedule controls additional repetitions, not the initial execution.

**Example** (Repeating successful effects with a schedule)

```ts
// Success Example
import { Console, Effect, Schedule } from "effect"

const action = Console.log("success")
const policy = Schedule.addDelay(Schedule.recurs(2), () => Effect.succeed("100 millis"))
const program = Effect.repeat(action, policy)

// Effect.runPromise(program).then((n) => console.log(`repetitions: ${n}`))
```

**Example** (Stopping repetition on failure)

```ts
// Failure Example
import { Effect, Schedule } from "effect"

let count = 0

// Define a callback effect that simulates an action with possible failures
const action = Effect.callback<string, string>((resume) => {
  if (count > 1) {
    console.log("failure")
    resume(Effect.fail("Uh oh!"))
  } else {
    count++
    console.log("success")
    resume(Effect.succeed("yay!"))
  }
})

const policy = Schedule.addDelay(Schedule.recurs(2), () => Effect.succeed("100 millis"))
const program = Effect.repeat(action, policy)

// Effect.runPromiseExit(program).then(console.log)
```

**See**

- `retry` for failure-based repetition
- `repeatOrElse` for fallback handling when repetition fails

**Signature**

```ts
declare const repeat: { <O extends Repeat.Options<A>, A>(options: O): <E, R>(self: Effect<A, E, R>) => Repeat.Return<R, E, A, O>; <Output, Input, Error, Env>(schedule: Schedule<Output, NoInfer<Input>, Error, Env>): <E, R>(self: Effect<Input, E, R>) => Effect<Output, E | Error, R | Env>; <Output, Input, Error, Env>(builder: ($: <O, E, R>(_: Schedule<O, NoInfer<Input>, E, R>) => Schedule<O, Input, E, R>) => Schedule<Output, NoInfer<Input>, Error, Env>): <E, R>(self: Effect<Input, E, R>) => Effect<Output, E | Error, R | Env>; <A, E, R, O extends Repeat.Options<A>>(self: Effect<A, E, R>, options: O): Repeat.Return<R, E, A, O>; <Input, E, R, Output, Error, Env>(self: Effect<Input, E, R>, schedule: Schedule<Output, NoInfer<Input>, Error, Env>): Effect<Output, E | Error, R | Env>; <Input, E, R, Output, Error, Env>(self: Effect<Input, E, R>, builder: ($: <O, E, R>(_: Schedule<O, NoInfer<Input>, E, R>) => Schedule<O, Input, E, R>) => Schedule<Output, NoInfer<Input>, Error, Env>): Effect<Output, E | Error, R | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7558)

Since v2.0.0