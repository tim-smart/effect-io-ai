# toPubSub

Converts the stream to a scoped `PubSub` of chunks. After the scope is closed,
the `PubSub` will never again produce values and should be discarded.

To import and use `toPubSub` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.toPubSub
```

**Signature**

```ts
export declare const toPubSub: {
  (capacity: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, PubSub.PubSub<Take.Take<E, A>>>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Effect.Effect<
    Scope.Scope | R,
    never,
    PubSub.PubSub<Take.Take<E, A>>
  >
}
```
