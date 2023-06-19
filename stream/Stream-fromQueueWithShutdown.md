# fromQueueWithShutdown

Creates a stream from a queue of values. The queue will be shutdown once
the stream is closed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromQueueWithShutdown: <A>(
  queue: Queue.Dequeue<A>,
  maxChunkSize?: number
) => Stream<never, never, A>
```
