# fromQueueWithShutdown

Create a sink which enqueues each element into the specified queue. The
queue will be shutdown once the stream is closed.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromQueueWithShutdown: <In>(queue: Queue.Enqueue<In>) => Sink<never, never, In, never, void>
```
