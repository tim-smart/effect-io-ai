# mapChunksEffect

Effectfully transforms the chunks emitted by this stream.

To import and use `mapChunksEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapChunksEffect
```

**Signature**

```ts
export declare const mapChunksEffect: {
  <A, B, E2, R2>(
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R>
  <A, E, R, B, E2, R2>(
    self: Stream<A, E, R>,
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>
  ): Stream<B, E | E2, R | R2>
}
```
