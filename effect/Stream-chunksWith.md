# chunksWith

Performs the specified stream transformation with the chunk structure of
the stream exposed.

To import and use `chunksWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.chunksWith
```

**Signature**

```ts
export declare const chunksWith: {
  <R, E, A, R2, E2, A2>(
    f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>
  ): (self: Stream<A, E, R>) => Stream<A2, E | E2, R | R2>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
