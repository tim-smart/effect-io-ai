# provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const provideSomeLayer: {
  <RIn, E2, ROut>(layer: Layer.Layer<RIn, E2, ROut>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<RIn | Exclude<R, ROut>, E2 | E, A>
  <R, E, A, RIn, E2, ROut>(self: Stream<R, E, A>, layer: Layer.Layer<RIn, E2, ROut>): Stream<
    RIn | Exclude<R, ROut>,
    E | E2,
    A
  >
}
```
