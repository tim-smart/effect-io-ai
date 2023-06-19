# chunksWith

Performs the specified stream transformation with the chunk structure of
the stream exposed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const chunksWith: <R, E, A, R2, E2, A2>(
  f: (stream: Stream<R, E, Chunk.Chunk<A>>) => Stream<R2, E2, Chunk.Chunk<A2>>
) => (self: Stream<R, E, A>) => Stream<R | R2, E | E2, A2>
```
