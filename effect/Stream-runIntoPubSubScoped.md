# runIntoPubSubScoped

Like `Stream.runIntoPubSub`, but provides the result as a scoped effect to
allow for scope composition.

To import and use `runIntoPubSubScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoPubSubScoped
```

**Signature**

```ts
export declare const runIntoPubSubScoped: {
  <A, E>(
    pubsub: PubSub.PubSub<Take.Take<A, E>>
  ): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, Scope.Scope | R>
  <A, E, R>(self: Stream<A, E, R>, pubsub: PubSub.PubSub<Take.Take<A, E>>): Effect.Effect<void, never, Scope.Scope | R>
}
```
