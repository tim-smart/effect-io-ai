# splitOnChunk

Splits elements on a delimiter and transforms the splits into desired output.

To import and use `splitOnChunk` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.splitOnChunk
```

**Signature**

```ts
export declare const splitOnChunk: {
  <A>(delimiter: Chunk.Chunk<A>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, delimiter: Chunk.Chunk<A>): Stream<R, E, Chunk.Chunk<A>>
}
```
