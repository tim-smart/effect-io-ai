# mapEffectPar

Maps over elements of the stream with the specified effectful function,
executing up to `n` invocations of `f` concurrently. Transformed elements
will be emitted in the original order.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mapEffectPar: {
  <A, R2, E2, A2>(n: number, f: (a: A) => Effect.Effect<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, n: number, f: (a: A) => Effect.Effect<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
