# zipWithChunks

Zips this stream with another point-wise and applies the function to the
paired elements.

The new stream will end when one of the sides ends.

To import and use `zipWithChunks` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWithChunks
undefined

**Signature**

```ts
export declare const zipWithChunks: {
  <A2, E2, R2, A, A3>(
    that: Stream<A2, E2, R2>,
    f: (
      left: Chunk.Chunk<A>,
      right: Chunk.Chunk<A2>
    ) => readonly [Chunk.Chunk<A3>, Either.Either<Chunk.Chunk<A2>, Chunk.Chunk<A>>]
  ): <E, R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2, A3>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    f: (
      left: Chunk.Chunk<A>,
      right: Chunk.Chunk<A2>
    ) => readonly [Chunk.Chunk<A3>, Either.Either<Chunk.Chunk<A2>, Chunk.Chunk<A>>]
  ): Stream<A3, E | E2, R | R2>
}
```
