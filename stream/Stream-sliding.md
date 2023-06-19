# sliding

Emits a sliding window of `n` elements.

```ts
import * as Stream from '@effect/stream/Stream'
import { pipe } from '@effect/data/Function'

pipe(Stream.make(1, 2, 3, 4), Stream.sliding(2), Stream.runCollect)
// => Chunk(Chunk(1, 2), Chunk(2, 3), Chunk(3, 4))
```

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const sliding: {
  (chunkSize: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, chunkSize: number): Stream<R, E, Chunk.Chunk<A>>
}
```
