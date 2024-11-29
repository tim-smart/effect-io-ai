# orElseIfEmptyChunk

Produces the specified chunk if this stream is empty.

To import and use `orElseIfEmptyChunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.orElseIfEmptyChunk
undefined

**Signature**

```ts
export declare const orElseIfEmptyChunk: {
  <A2>(chunk: LazyArg<Chunk.Chunk<A2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>
  <A, E, R, A2>(self: Stream<A, E, R>, chunk: LazyArg<Chunk.Chunk<A2>>): Stream<A | A2, E, R>
}
```
