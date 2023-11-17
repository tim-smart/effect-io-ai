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
  <A, K>(f: (a: A) => K): <R, E>(self: Stream<R, E, A>) => Stream<R, E, [K, Chunk.NonEmptyChunk<A>]>
  <R, E, A, K>(self: Stream<R, E, A>, f: (a: A) => K): Stream<R, E, [K, Chunk.NonEmptyChunk<A>]>
}
```
