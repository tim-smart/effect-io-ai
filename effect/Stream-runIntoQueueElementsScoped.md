# runIntoQueueElementsScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped [[ZIO]]
to allow for scope composition.

To import and use `runIntoQueueElementsScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoQueueElementsScoped
```

**Signature**

```ts
export declare const runIntoQueueElementsScoped: {
  <E, A>(
    queue: Queue.Enqueue<Exit.Exit<Option.Option<E>, A>>
  ): <R>(self: Stream<R, E, A>) => Effect.Effect<Scope.Scope | R, never, void>
  <R, E, A>(
    self: Stream<R, E, A>,
    queue: Queue.Enqueue<Exit.Exit<Option.Option<E>, A>>
  ): Effect.Effect<Scope.Scope | R, never, void>
}
```
