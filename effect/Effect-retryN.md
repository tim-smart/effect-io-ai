# retryN

Retries this effect the specified number of times.

To import and use `retryN` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.retryN
```

**Signature**

```ts
export declare const retryN: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A>
}
```
