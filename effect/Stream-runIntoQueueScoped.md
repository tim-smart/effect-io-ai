# runIntoQueueScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped effect
to allow for scope composition.

To import and use `runIntoQueueScoped` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runIntoQueueScoped
```

**Signature**

```ts
export declare const runIntoQueueScoped: {
  <E, A>(queue: Queue.Enqueue<Take.Take<E, A>>): <R>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, void>
  <R, E, A>(self: Stream<R, E, A>, queue: Queue.Enqueue<Take.Take<E, A>>): Effect.Effect<Scope.Scope | R, never, void>
}
```
