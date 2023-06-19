# fromChunkQueueWithShutdown

Creates a stream from a `Queue` of values.

The queue will be shutdown once the stream is closed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromChunkQueueWithShutdown: <A>(queue: Queue.Dequeue<Chunk.Chunk<A>>) => Stream<never, never, A>
```
