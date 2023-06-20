# toQueue

Converts the stream to a scoped queue of chunks. After the scope is closed,
the queue will never again produce values and should be discarded.

To import and use `toQueue` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueue
```

**Signature**

```ts
export declare const toQueue: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
