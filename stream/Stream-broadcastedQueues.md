# broadcastedQueues

Converts the stream to a scoped list of queues. Every value will be
replicated to every queue with the slowest queue being allowed to buffer
`maximumLag` chunks before the driver is back pressured.

Queues can unsubscribe from upstream by shutting down.

To import and use `broadcastedQueues` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.broadcastedQueues
```

**Signature**

```ts
export declare const broadcastedQueues: {
  <N extends number>(n: N, maximumLag: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Stream.DynamicTuple<Queue.Dequeue<Take.Take<E, A>>, N>>
  <R, E, A, N extends number>(self: Stream<R, E, A>, n: N, maximumLag: number): Effect.Effect<
    Scope.Scope | R,
    never,
    Stream.DynamicTuple<Queue.Dequeue<Take.Take<E, A>>, N>
  >
}
```
