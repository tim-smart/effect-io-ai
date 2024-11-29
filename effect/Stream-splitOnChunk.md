# splitOnChunk

Splits elements on a delimiter and transforms the splits into desired output.

To import and use `splitOnChunk` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.splitOnChunk
undefined

**Signature**

```ts
export declare const splitOnChunk: {
  <A>(delimiter: Chunk.Chunk<A>): <E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, delimiter: Chunk.Chunk<A>): Stream<Chunk.Chunk<A>, E, R>
}
```
