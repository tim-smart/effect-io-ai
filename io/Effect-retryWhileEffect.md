# retryWhileEffect

Retries this effect while its error satisfies the specified effectful
predicate.

To import and use `retryWhileEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.retryWhileEffect
```

**Signature**

```ts
export declare const retryWhileEffect: {
  <R1, E>(f: (e: E) => Effect<R1, never, boolean>): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E, A, R1>(self: Effect<R, E, A>, f: (e: E) => Effect<R1, never, boolean>): Effect<R | R1, E, A>
}
```
