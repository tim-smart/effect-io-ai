# dropWhileEffect

Drops all elements of the stream for as long as the specified predicate
produces an effect that evalutates to `true`

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const dropWhileEffect: {
  <A, R2, E2>(predicate: (a: A) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, predicate: (a: A) => Effect.Effect<R2, E2, boolean>): Stream<
    R | R2,
    E | E2,
    A
  >
}
```
