# retryUntil

Retries this effect until its error satisfies the specified predicate.

To import and use `retryUntil` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.retryUntil
```

**Signature**

```ts
export declare const retryUntil: {
  <E, E2 extends E>(f: Refinement<E, E2>): <R, A>(self: Effect<R, E, A>) => Effect<R, E2, A>
  <E>(f: Predicate<E>): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, E2 extends E>(self: Effect<R, E, A>, f: Refinement<E, E2>): Effect<R, E2, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<E>): Effect<R, E, A>
}
```
