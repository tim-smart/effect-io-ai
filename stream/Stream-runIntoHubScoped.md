# runIntoHubScoped

Like `Stream.runIntoHub`, but provides the result as a scoped effect to
allow for scope composition.

To import and use `runIntoHubScoped` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.runIntoHubScoped
```

**Signature**

```ts
export declare const runIntoHubScoped: {
  <E, A>(hub: Hub.Hub<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<Scope.Scope | R, never, void>
  <R, E, A>(self: Stream<R, E, A>, hub: Hub.Hub<Take.Take<E, A>>): Effect.Effect<Scope.Scope | R, never, void>
}
```
