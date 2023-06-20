# fromQueueWithShutdown

Create a sink which enqueues each element into the specified queue. The
queue will be shutdown once the stream is closed.

To import and use `fromQueueWithShutdown` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fromQueueWithShutdown
```

**Signature**

```ts
export declare const fromQueueWithShutdown: <In>(queue: Queue.Enqueue<In>) => Sink<never, never, In, never, void>
```
