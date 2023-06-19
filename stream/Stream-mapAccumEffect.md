# mapAccumEffect

Statefully and effectfully maps over the elements of this stream to produce
new elements.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mapAccumEffect: {
  <S, A, R2, E2, A2>(s: S, f: (s: S, a: A) => Effect.Effect<R2, E2, readonly [S, A2]>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, S, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    s: S,
    f: (s: S, a: A) => Effect.Effect<R2, E2, readonly [S, A2]>
  ): Stream<R | R2, E | E2, A2>
}
```
