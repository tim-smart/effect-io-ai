# runForEachChunk

Consumes all elements of the stream, passing them to the specified
callback.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runForEachChunk: {
  <A, R2, E2, _>(f: (a: Chunk.Chunk<A>) => Effect.Effect<R2, E2, _>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<R2 | R, E2 | E, void>
  <R, E, A, R2, E2, _>(self: Stream<R, E, A>, f: (a: Chunk.Chunk<A>) => Effect.Effect<R2, E2, _>): Effect.Effect<
    R | R2,
    E | E2,
    void
  >
}
```
