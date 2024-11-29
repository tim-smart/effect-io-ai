# runIntoQueueScoped

Like `Stream.runIntoQueue`, but provides the result as a scoped effect
to allow for scope composition.

To import and use `runIntoQueueScoped` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoQueueScoped
undefined

**Signature**

```ts
export declare const runIntoQueueScoped: {
  <A, E>(
    queue: Queue.Enqueue<Take.Take<A, E>>
  ): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, Scope.Scope | R>
  <A, E, R>(self: Stream<A, E, R>, queue: Queue.Enqueue<Take.Take<A, E>>): Effect.Effect<void, never, Scope.Scope | R>
}
```
