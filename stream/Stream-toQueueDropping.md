# toQueueDropping

Converts the stream to a dropping scoped queue of chunks. After the scope
is closed, the queue will never again produce values and should be
discarded.

To import and use `toQueueDropping` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueDropping
```

**Signature**

```ts
export declare const toQueueDropping: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
