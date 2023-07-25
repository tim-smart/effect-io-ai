# toQueueOfElements

Converts the stream to a scoped queue of elements. After the scope is
closed, the queue will never again produce values and should be discarded.

Defaults to a capacity of 2.

To import and use `toQueueOfElements` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.toQueueOfElements
```

**Signature**

```ts
export declare const toQueueOfElements: {
  (options?: { readonly capacity?: number }): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>>
  <R, E, A>(self: Stream<R, E, A>, options?: { readonly capacity?: number }): Effect.Effect<
    Scope.Scope | R,
    never,
    Queue.Dequeue<Exit.Exit<Option.Option<E>, A>>
  >
}
```
