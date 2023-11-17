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
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, Chunk.Chunk<B>>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, B>
  <R, E, A, R2, E2, B>(
    self: Stream<R, E, A>,
    f: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, Chunk.Chunk<B>>
  ): Stream<R | R2, E | E2, B>
}
```
