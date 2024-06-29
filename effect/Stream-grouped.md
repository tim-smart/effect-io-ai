# grouped

Partitions the stream with specified `chunkSize`.

To import and use `grouped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.grouped
```

**Signature**

```ts
export declare const grouped: {
  (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Chunk.Chunk<A>, E, R>
}
```
