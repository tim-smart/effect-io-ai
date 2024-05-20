# repeatOrElse

The `repeatOrElse` function returns a new effect that repeats the specified
effect according to the given schedule or until the first failure. When a
failure occurs, the failure value and schedule output are passed to a
specified handler. Scheduled recurrences are in addition to the initial
execution, so `Effect.repeat(action, Schedule.once)` executes `action` once
initially and then repeats it an additional time if it succeeds.

To import and use `repeatOrElse` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.repeatOrElse
```

**Example**

```ts
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

const policy = Schedule.addDelay(
  Schedule.recurs(2), // Repeat for a maximum of 2 times
  () => "100 millis" // Add a delay of 100 milliseconds between repetitions
)

const program = Effect.repeatOrElse(action, policy, () =>
  Effect.sync(() => {
    console.log("orElse")
    return count - 1
  })
)

Effect.runPromise(program).then((n) => console.log(`repetitions: ${n}`))
```

**Signature**

```ts
export declare const repeatOrElse: {
  <R2, A, B, E, E2, R3>(
    schedule: Schedule.Schedule<B, A, R2>,
    orElse: (error: E, option: Option.Option<B>) => Effect<B, E2, R3>
  ): <R>(self: Effect<A, E, R>) => Effect<B, E2, R2 | R3 | R>
  <A, E, R, R2, B, E2, R3>(
    self: Effect<A, E, R>,
    schedule: Schedule.Schedule<B, A, R2>,
    orElse: (error: E, option: Option.Option<B>) => Effect<B, E2, R3>
  ): Effect<B, E2, R | R2 | R3>
}
```
