# toQueueUnbounded

Converts the stream into an unbounded scoped queue. After the scope is
closed, the queue will never again produce values and should be discarded.

To import and use `toQueueUnbounded` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueUnbounded
```

**Signature**

```ts
export declare const toQueueUnbounded: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
