# mapChunks

Transforms the chunks emitted by this stream.

To import and use `mapChunks` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapChunks
```

**Signature**

```ts
export declare const mapChunks: {
  <A, B>(f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): Stream<R, E, B>
}
```
