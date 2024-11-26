# retryOrElse

Retries a failing effect and runs a fallback effect if retries are exhausted.

The `retryOrElse` function attempts to retry a failing effect multiple
times according to a defined retry policy. If the retries are exhausted and
the effect still fails, it runs a fallback effect instead. This function is
useful when you want to handle failures gracefully by specifying an
alternative action after repeated failures.

To import and use `retryOrElse` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retryOrElse
```

**Example**

```ts
import { Effect, Schedule, Console } from "effect"

let count = 0

// Simulates an effect with possible failures
const task = Effect.async<string, Error>((resume) => {
  if (count <= 2) {
    count++
    console.log("failure")
    resume(Effect.fail(new Error()))
  } else {
    console.log("success")
    resume(Effect.succeed("yay!"))
  }
})

// Retry the task with a delay between retries and a maximum of 2 retries
const policy = Schedule.addDelay(Schedule.recurs(2), () => "100 millis")

// If all retries fail, run the fallback effect
const repeated = Effect.retryOrElse(task, policy, () => Console.log("orElse").pipe(Effect.as("default value")))

Effect.runPromise(repeated).then(console.log)
// Output:
// failure
// failure
// failure
// orElse
// default value
```

**Signature**

```ts
export declare const retryOrElse: {
  <A1, E, R1, A2, E2, R2>(
    policy: Schedule.Schedule<A1, NoInfer<E>, R1>,
    orElse: (e: NoInfer<E>, out: A1) => Effect<A2, E2, R2>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R1 | R2 | R>
  <A, E, R, A1, R1, A2, E2, R2>(
    self: Effect<A, E, R>,
    policy: Schedule.Schedule<A1, NoInfer<E>, R1>,
    orElse: (e: NoInfer<E>, out: A1) => Effect<A2, E2, R2>
  ): Effect<A | A2, E2, R | R1 | R2>
}
```
