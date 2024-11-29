# groupAdjacentBy

Creates a pipeline that groups on adjacent keys, calculated by the
specified function.

To import and use `groupAdjacentBy` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.groupAdjacentBy
undefined

**Signature**

```ts
export declare const groupAdjacentBy: {
  <A, K>(f: (a: A) => K): <E, R>(self: Stream<A, E, R>) => Stream<[K, Chunk.NonEmptyChunk<A>], E, R>
  <A, E, R, K>(self: Stream<A, E, R>, f: (a: A) => K): Stream<[K, Chunk.NonEmptyChunk<A>], E, R>
}
```
