# toQueueOfElementsCapacity

Like `toQueueOfElements`, but with a configurable `capacity` parameter.

To import and use `toQueueOfElementsCapacity` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueOfElementsCapacity
```

**Signature**

```ts
export declare const toQueueOfElementsCapacity: {
  (capacity: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Effect.Effect<
    Scope.Scope | R,
    never,
    Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>
  >
}
```
