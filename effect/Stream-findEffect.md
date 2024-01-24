# findEffect

Finds the first element emitted by this stream that satisfies the provided
effectful predicate.

To import and use `findEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.findEffect
```

**Signature**

```ts
export declare const findEffect: {
  <A, R2, E2>(
    predicate: (a: NoInfer<A>) => Effect.Effect<R2, E2, boolean>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(
    self: Stream<R, E, A>,
    predicate: (a: NoInfer<A>) => Effect.Effect<R2, E2, boolean>
  ): Stream<R | R2, E | E2, A>
}
```
