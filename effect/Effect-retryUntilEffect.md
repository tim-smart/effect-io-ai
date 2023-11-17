# retryUntilEffect

Retries this effect until its error satisfies the specified effectful
predicate.

To import and use `retryUntilEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retryUntilEffect
```

**Signature**

```ts
export declare const retryUntilEffect: {
  <R1, E, E2>(f: (e: E) => Effect<R1, E2, boolean>): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E | E2, A>
  <R, E, A, R1, E2>(self: Effect<R, E, A>, f: (e: E) => Effect<R1, E2, boolean>): Effect<R | R1, E | E2, A>
}
```
