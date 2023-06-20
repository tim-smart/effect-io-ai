# broadcastedQueuesDynamic

Converts the stream to a scoped dynamic amount of queues. Every chunk will
be replicated to every queue with the slowest queue being allowed to buffer
`maximumLag` chunks before the driver is back pressured.

Queues can unsubscribe from upstream by shutting down.

To import and use `broadcastedQueuesDynamic` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.broadcastedQueuesDynamic
```

**Signature**

```ts
export declare const broadcastedQueuesDynamic: {
  (maximumLag: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Effect.Effect<Scope.Scope, never, Queue.Dequeue<Take.Take<E, A>>>>
  <R, E, A>(self: Stream<R, E, A>, maximumLag: number): Effect.Effect<
    Scope.Scope | R,
    never,
    Effect.Effect<Scope.Scope, never, Queue.Dequeue<Take.Take<E, A>>>
  >
}
```
