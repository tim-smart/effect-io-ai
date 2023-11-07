# runIntoPubSub

Publishes elements of this stream to a `PubSub`. Stream failure and ending will
also be signalled.

To import and use `runIntoPubSub` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runIntoPubSub
```

**Signature**

```ts
export declare const runIntoPubSub: {
  <E, A>(pubsub: PubSub.PubSub<Take.Take<E, A>>): <R>(self: Stream<R, E, A>) => Effect.Effect<R, never, void>
  <R, E, A>(self: Stream<R, E, A>, pubsub: PubSub.PubSub<Take.Take<E, A>>): Effect.Effect<R, never, void>
}
```
