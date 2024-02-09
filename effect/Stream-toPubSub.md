# toPubSub

Converts the stream to a scoped `PubSub` of chunks. After the scope is closed,
the `PubSub` will never again produce values and should be discarded.

To import and use `toPubSub` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toPubSub
```

**Signature**

```ts
export declare const toPubSub: {
  (
    capacity: number
  ): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    capacity: number
  ): Effect.Effect<PubSub.PubSub<Take.Take<A, E>>, never, Scope.Scope | R>
}
```
