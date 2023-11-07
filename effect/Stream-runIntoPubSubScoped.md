# runIntoPubSubScoped

Like `Stream.runIntoPubSub`, but provides the result as a scoped effect to
allow for scope composition.

To import and use `runIntoPubSubScoped` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runIntoPubSubScoped
```

**Signature**

```ts
export declare const runIntoPubSubScoped: {
  <E, A>(pubsub: PubSub.PubSub<Take.Take<E, A>>): <R>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, void>
  <R, E, A>(self: Stream<R, E, A>, pubsub: PubSub.PubSub<Take.Take<E, A>>): Effect.Effect<Scope.Scope | R, never, void>
}
```
