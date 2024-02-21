# mapConcatChunkEffect

Effectfully maps each element to a chunk, and flattens the chunks into the
output of this stream.

To import and use `mapConcatChunkEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapConcatChunkEffect
```

**Signature**

```ts
export declare const mapConcatChunkEffect: {
  <A, A2, E2, R2>(
    f: (a: A) => Effect.Effect<Chunk.Chunk<A2>, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<Chunk.Chunk<A2>, E2, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
