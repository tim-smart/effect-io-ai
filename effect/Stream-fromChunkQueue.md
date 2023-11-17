# fromChunkQueue

Creates a stream from a `Queue` of values.

To import and use `fromChunkQueue` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChunkQueue
```

**Signature**

```ts
export declare const fromChunkQueue: <A>(
  queue: Queue.Dequeue<Chunk.Chunk<A>>,
  options?: { readonly shutdown?: boolean | undefined }
) => Stream<never, never, A>
```
