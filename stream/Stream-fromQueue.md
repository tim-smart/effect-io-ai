# fromQueue

Creates a stream from a queue of values

To import and use `fromQueue` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromQueue
```

**Signature**

```ts
export declare const fromQueue: <A>(queue: Queue.Dequeue<A>, maxChunkSize?: number) => Stream<never, never, A>
```
