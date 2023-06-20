# replicateEffect

Performs this effect the specified number of times and collects the
results.

To import and use `replicateEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.replicateEffect
```

**Signature**

```ts
export declare const replicateEffect: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A[]>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A[]>
}
```
