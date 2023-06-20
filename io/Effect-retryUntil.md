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
  <E>(f: Predicate<E>): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<E>): Effect<R, E, A>
}
```
