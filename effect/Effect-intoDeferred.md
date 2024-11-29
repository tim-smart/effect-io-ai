# intoDeferred

Converts an `Effect` into an operation that completes a `Deferred` with its result.

**Details**

The `intoDeferred` function takes an effect and a `Deferred` and ensures that the `Deferred`
is completed based on the outcome of the effect. If the effect succeeds, the `Deferred` is
completed with the success value. If the effect fails, the `Deferred` is completed with the
failure. Additionally, if the effect is interrupted, the `Deferred` will also be interrupted.

To import and use `intoDeferred` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.intoDeferred
undefined

**Example**

```ts
import { Deferred, Effect } from "effect"

// Define an effect that succeeds
const successEffect = Effect.succeed(42)

const program = Effect.gen(function* () {
  // Create a deferred
  const deferred = yield* Deferred.make<number, string>()

  // Complete the deferred using the successEffect
  const isCompleted = yield* Effect.intoDeferred(successEffect, deferred)

  // Access the value of the deferred
  const value = yield* Deferred.await(deferred)
  console.log(value)

  return isCompleted
})

Effect.runPromise(program).then(console.log)
// Output:
// 42
// true
```

**Signature**

```ts
export declare const intoDeferred: {
  <A, E>(deferred: Deferred.Deferred<A, E>): <R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
  <A, E, R>(self: Effect<A, E, R>, deferred: Deferred.Deferred<A, E>): Effect<boolean, never, R>
}
```
