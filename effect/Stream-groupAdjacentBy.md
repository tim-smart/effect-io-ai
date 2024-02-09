# groupAdjacentBy

Creates a pipeline that groups on adjacent keys, calculated by the
specified function.

To import and use `groupAdjacentBy` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.groupAdjacentBy
```

**Signature**

```ts
export declare const groupAdjacentBy: {
  <A, K>(f: (a: A) => K): <R, E>(self: Stream<A, E, R>) => Stream<[K, Chunk.NonEmptyChunk<A>], E, R>
  <R, E, A, K>(self: Stream<A, E, R>, f: (a: A) => K): Stream<[K, Chunk.NonEmptyChunk<A>], E, R>
}
```
