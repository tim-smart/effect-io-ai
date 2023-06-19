# replicateEffectDiscard

Performs this effect the specified number of times, discarding the results.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const replicateEffectDiscard: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, void>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, void>
}
```
