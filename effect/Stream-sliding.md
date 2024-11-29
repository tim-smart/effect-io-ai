# sliding

Emits a sliding window of `n` elements.

```ts
import * as Stream from "./Stream"
import { pipe } from "./Function"

pipe(Stream.make(1, 2, 3, 4), Stream.sliding(2), Stream.runCollect)
// => Chunk(Chunk(1, 2), Chunk(2, 3), Chunk(3, 4))
```

To import and use `sliding` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.sliding
undefined

**Signature**

```ts
export declare const sliding: {
  (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Chunk.Chunk<A>, E, R>
}
```
