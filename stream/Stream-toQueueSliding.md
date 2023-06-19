# toQueueSliding

Converts the stream to a sliding scoped queue of chunks. After the scope is
closed, the queue will never again produce values and should be discarded.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const toQueueSliding: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
```
