# toQueueOfElementsCapacity

Like `toQueueOfElements`, but with a configurable `capacity` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

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
