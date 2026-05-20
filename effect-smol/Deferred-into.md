Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.into

Runs an `Effect` and attempts to complete a `Deferred` with the effect's
result.

**Details**

If the effect succeeds, fails, dies, or is interrupted, that result is used
as the attempted completion. The returned effect cannot fail; it succeeds
with `true` if it completed the `Deferred`, or `false` if the `Deferred` was
already completed.

**Example** (Completing a Deferred from an effect result)

```ts
import { Deferred, Effect } from "effect"

// Define an effect that succeeds
const successEffect = Effect.succeed(42)

const program = Effect.gen(function*() {
  // Create a deferred
  const deferred = yield* Deferred.make<number, string>()

  // Complete the deferred using the successEffect
  const isCompleted = yield* Deferred.into(successEffect, deferred)

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
declare const into: { <A, E>(deferred: Deferred<A, E>): <R>(self: Effect<A, E, R>) => Effect<boolean, never, R>; <A, E, R>(self: Effect<A, E, R>, deferred: Deferred<A, E>): Effect<boolean, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L835)

Since v4.0.0