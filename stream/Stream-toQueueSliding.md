# toQueueSliding

Converts the stream to a sliding scoped queue of chunks. After the scope is
closed, the queue will never again produce values and should be discarded.

To import and use `toQueueSliding` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueSliding
```

**Signature**

```ts
export declare const toQueueSliding: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
