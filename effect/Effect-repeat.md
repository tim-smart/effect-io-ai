# repeat

Repeats an effect based on a specified schedule or until the first failure.

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

To import and use `repeat` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.repeat
```

**Example**

```ts
// Success Example
import { Effect, Schedule, Console } from "effect"

const action = Console.log("success")
const policy = Schedule.addDelay(Schedule.recurs(2), () => "100 millis")
const program = Effect.repeat(action, policy)

// Effect.runPromise(program).then((n) => console.log(`repetitions: ${n}`))
```

**Example**

```ts
// Failure Example
import { Effect, Schedule } from "effect"

let count = 0

// Define an async effect that simulates an action with possible failures
const action = Effect.async<string, string>((resume) => {
  if (count > 1) {
    console.log("failure")
    resume(Effect.fail("Uh oh!"))
  } else {
    count++
    console.log("success")
    resume(Effect.succeed("yay!"))
  }
})

const policy = Schedule.addDelay(Schedule.recurs(2), () => "100 millis")
const program = Effect.repeat(action, policy)

// Effect.runPromiseExit(program).then(console.log)
```

**Signature**

```ts
export declare const repeat: {
  <O extends NoExcessProperties<Repeat.Options<A>, O>, A>(
    options: O
  ): <E, R>(self: Effect<A, E, R>) => Repeat.Return<R, E, A, O>
  <B, A, R1>(schedule: Schedule.Schedule<B, A, R1>): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R1 | R>
  <A, E, R, O extends NoExcessProperties<Repeat.Options<A>, O>>(
    self: Effect<A, E, R>,
    options: O
  ): Repeat.Return<R, E, A, O>
  <A, E, R, B, R1>(self: Effect<A, E, R>, schedule: Schedule.Schedule<B, A, R1>): Effect<B, E, R | R1>
}
```
