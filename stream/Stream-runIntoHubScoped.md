# runIntoHubScoped

Like `Stream.runIntoHub`, but provides the result as a scoped effect to
allow for scope composition.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runIntoHubScoped: {
  <E, A>(hub: Hub.Hub<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<Scope.Scope | R, never, void>
  <R, E, A>(self: Stream<R, E, A>, hub: Hub.Hub<Take.Take<E, A>>): Effect.Effect<Scope.Scope | R, never, void>
}
```
