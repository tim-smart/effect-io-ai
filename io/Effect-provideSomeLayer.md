# provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const provideSomeLayer: {
  <R2, E2, A2>(layer: Layer.Layer<R2, E2, A2>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | Exclude<R, A2>, E2 | E, A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, layer: Layer.Layer<R2, E2, A2>): Effect<R2 | Exclude<R, A2>, E | E2, A>
}
```
