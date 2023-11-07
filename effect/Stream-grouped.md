# grouped

Partitions the stream with specified `chunkSize`.

To import and use `grouped` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.grouped
```

**Signature**

```ts
export declare const grouped: {
  (chunkSize: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, chunkSize: number): Stream<R, E, Chunk.Chunk<A>>
}
```
