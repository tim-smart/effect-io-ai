# mapConcatChunk

Maps each element to a chunk, and flattens the chunks into the output of
this stream.

To import and use `mapConcatChunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapConcatChunk
undefined

**Signature**

```ts
export declare const mapConcatChunk: {
  <A, A2>(f: (a: A) => Chunk.Chunk<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, f: (a: A) => Chunk.Chunk<A2>): Stream<A2, E, R>
}
```
