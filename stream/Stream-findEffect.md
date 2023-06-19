# findEffect

Finds the first element emitted by this stream that satisfies the provided
effectful predicate.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const findEffect: {
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
