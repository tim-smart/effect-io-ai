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
  <A, R2, E2, B>(
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R>
  <R, E, A, R2, E2, B>(
    self: Stream<A, E, R>,
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>
  ): Stream<B, E | E2, R | R2>
}
```
