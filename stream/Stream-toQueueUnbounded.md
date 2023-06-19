# toQueueUnbounded

Converts the stream into an unbounded scoped queue. After the scope is
closed, the queue will never again produce values and should be discarded.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const toQueueUnbounded: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
