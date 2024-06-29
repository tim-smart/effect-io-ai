# runIntoPubSub

Publishes elements of this stream to a `PubSub`. Stream failure and ending will
also be signalled.

To import and use `runIntoPubSub` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runIntoPubSub
```

**Signature**

```ts
export declare const runIntoPubSub: {
  <A, E>(pubsub: PubSub.PubSub<Take.Take<A, E>>): <R>(self: Stream<A, E, R>) => Effect.Effect<void, never, R>
  <A, E, R>(self: Stream<A, E, R>, pubsub: PubSub.PubSub<Take.Take<A, E>>): Effect.Effect<void, never, R>
}
```
