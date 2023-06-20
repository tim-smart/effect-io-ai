# retryWhileEquals

Retries this effect for as long as its error is equal to the specified
error.

To import and use `retryWhileEquals` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.retryWhileEquals
```

**Signature**

```ts
export declare const retryWhileEquals: {
  <E>(e: E): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, e: E): Effect<R, E, A>
}
```
