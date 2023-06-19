# toHub

Converts the stream to a scoped hub of chunks. After the scope is closed,
the hub will never again produce values and should be discarded.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const toHub: {
  (capacity: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Hub.Hub<Take.Take<E, A>>>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Effect.Effect<Scope.Scope | R, never, Hub.Hub<Take.Take<E, A>>>
}
```
