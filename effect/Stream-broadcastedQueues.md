# broadcastedQueues

Converts the stream to a scoped list of queues. Every value will be
replicated to every queue with the slowest queue being allowed to buffer
`maximumLag` chunks before the driver is back pressured.

Queues can unsubscribe from upstream by shutting down.

To import and use `broadcastedQueues` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.broadcastedQueues
```

**Signature**

```ts
export declare const broadcastedQueues: {
  <N extends number>(
    n: N,
    maximumLag: number
  ): <A, E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<Stream.DynamicTuple<Queue.Dequeue<Take.Take<A, E>>, N>, never, Scope.Scope | R>
  <A, E, R, N extends number>(
    self: Stream<A, E, R>,
    n: N,
    maximumLag: number
  ): Effect.Effect<Stream.DynamicTuple<Queue.Dequeue<Take.Take<A, E>>, N>, never, Scope.Scope | R>
}
```
