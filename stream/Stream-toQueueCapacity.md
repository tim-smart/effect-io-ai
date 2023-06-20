# toQueueCapacity

Like `toQueue`, but with a configurable `capacity` parameter.

To import and use `toQueueCapacity` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueCapacity
```

**Signature**

```ts
export declare const toQueueCapacity: {
  (capacity: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Take.Take<E, A>>>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Effect.Effect<
    Scope.Scope | R,
    never,
    Queue.Dequeue<Take.Take<E, A>>
  >
}
```
