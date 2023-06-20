# replicateEffectDiscard

Performs this effect the specified number of times, discarding the results.

To import and use `replicateEffectDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.replicateEffectDiscard
```

**Signature**

```ts
export declare const replicateEffectDiscard: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, void>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, void>
}
```
