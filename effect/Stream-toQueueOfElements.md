# toQueueOfElements

Converts the stream to a scoped queue of elements. After the scope is
closed, the queue will never again produce values and should be discarded.

Defaults to a capacity of 2.

To import and use `toQueueOfElements` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.toQueueOfElements
undefined

**Signature**

```ts
export declare const toQueueOfElements: {
  (
    options?: { readonly capacity?: number | undefined } | undefined
  ): <A, E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options?: { readonly capacity?: number | undefined } | undefined
  ): Effect.Effect<Queue.Dequeue<Exit.Exit<A, Option.Option<E>>>, never, Scope.Scope | R>
}
```
