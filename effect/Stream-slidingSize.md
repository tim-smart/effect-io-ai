# slidingSize

Like `sliding`, but with a configurable `stepSize` parameter.

To import and use `slidingSize` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.slidingSize
```

**Signature**

```ts
export declare const slidingSize: {
  (chunkSize: number, stepSize: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, chunkSize: number, stepSize: number): Stream<R, E, Chunk.Chunk<A>>
}
```
