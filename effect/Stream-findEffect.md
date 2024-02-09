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
    predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2>(
    self: Stream<A, E, R>,
    predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>
  ): Stream<A, E | E2, R | R2>
}
```
