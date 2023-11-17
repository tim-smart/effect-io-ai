# mapConcatChunk

Maps each element to a chunk, and flattens the chunks into the output of
this stream.

To import and use `mapConcatChunk` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapConcatChunk
```

**Signature**

```ts
export declare const mapConcatChunk: {
  <A, A2>(f: (a: A) => Chunk.Chunk<A2>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A2>
  <R, E, A, A2>(self: Stream<R, E, A>, f: (a: A) => Chunk.Chunk<A2>): Stream<R, E, A2>
}
```
