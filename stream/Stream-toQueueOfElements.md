# toQueueOfElements

Converts the stream to a scoped queue of elements. After the scope is
closed, the queue will never again produce values and should be discarded.

To import and use `toQueueOfElements` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueOfElements
```

**Signature**

```ts
export declare const toQueueOfElements: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>>
```
