# runIntoQueueElementsScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped [[ZIO]]
to allow for scope composition.

To import and use `runIntoQueueElementsScoped` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoQueueElementsScoped
undefined

**Signature**

```ts
export declare const runIntoQueueElementsScoped: {
  <A, E>(
    queue: Queue.Enqueue<Exit.Exit<A, Option.Option<E>>>
  ): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    queue: Queue.Enqueue<Exit.Exit<A, Option.Option<E>>>
  ): Effect.Effect<void, never, Scope.Scope | R>
}
```
