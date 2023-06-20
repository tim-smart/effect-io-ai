# fromChunkQueueWithShutdown

Creates a stream from a `Queue` of values.

The queue will be shutdown once the stream is closed.

To import and use `fromChunkQueueWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunkQueueWithShutdown
```

**Signature**

```ts
export declare const fromChunkQueueWithShutdown: <A>(queue: Queue.Dequeue<Chunk.Chunk<A>>) => Stream<never, never, A>
```
