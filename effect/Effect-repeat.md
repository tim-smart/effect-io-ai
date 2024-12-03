# repeat

The `repeat` function returns a new effect that repeats the given effect
according to a specified schedule or until the first failure. The scheduled
recurrences are in addition to the initial execution, so `repeat(action,
Schedule.once)` executes `action` once initially, and if it succeeds, repeats it
an additional time.

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

Effect.runPromise(program).then((n) => console.log(`repetitions: ${n}`))
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

Effect.runPromiseExit(program).then(console.log)
```

**Signature**

```ts
export declare const repeat: {
  <O extends Repeat.Options<A>, A>(options: O): <E, R>(self: Effect<A, E, R>) => Repeat.Return<R, E, A, O>
  <B, A, R1>(schedule: Schedule.Schedule<B, A, R1>): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R1 | R>
  <A, E, R, O extends Repeat.Options<A>>(self: Effect<A, E, R>, options: O): Repeat.Return<R, E, A, O>
  <A, E, R, B, R1>(self: Effect<A, E, R>, schedule: Schedule.Schedule<B, A, R1>): Effect<B, E, R | R1>
}
```
