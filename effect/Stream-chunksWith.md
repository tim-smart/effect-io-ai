# chunksWith

Performs the specified stream transformation with the chunk structure of
the stream exposed.

To import and use `chunksWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.chunksWith
undefined

**Signature**

```ts
export declare const chunksWith: {
  <A, E, R, A2, E2, R2>(
    f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>
  ): (self: Stream<A, E, R>) => Stream<A2, E | E2, R | R2>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
