# slidingSize

Like `sliding`, but with a configurable `stepSize` parameter.

To import and use `slidingSize` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.slidingSize
undefined

**Signature**

```ts
export declare const slidingSize: {
  (chunkSize: number, stepSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, chunkSize: number, stepSize: number): Stream<Chunk.Chunk<A>, E, R>
}
```
