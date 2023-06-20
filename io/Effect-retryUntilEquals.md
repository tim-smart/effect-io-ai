# retryUntilEquals

Retries this effect until its error is equal to the specified error.

To import and use `retryUntilEquals` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.retryUntilEquals
```

**Signature**

```ts
export declare const retryUntilEquals: {
  <E>(e: E): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, e: E): Effect<R, E, A>
}
```
