# mapChunks

Transforms the chunks emitted by this stream.

To import and use `mapChunks` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapChunks
```

**Signature**

```ts
export declare const mapChunks: {
  <A, B>(f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A, E, R, B>(self: Stream<A, E, R>, f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): Stream<B, E, R>
}
```
