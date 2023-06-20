# fromQueueWithShutdown

Creates a stream from a queue of values. The queue will be shutdown once
the stream is closed.

To import and use `fromQueueWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromQueueWithShutdown
```

**Signature**

```ts
export declare const fromQueueWithShutdown: <A>(
  queue: Queue.Dequeue<A>,
  maxChunkSize?: number
) => Stream<never, never, A>
```
