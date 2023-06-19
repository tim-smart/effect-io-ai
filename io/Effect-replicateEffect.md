# replicateEffect

Performs this effect the specified number of times and collects the
results.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const replicateEffect: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A[]>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A[]>
}
```
