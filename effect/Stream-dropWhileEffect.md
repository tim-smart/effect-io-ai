# dropWhileEffect

Drops all elements of the stream for as long as the specified predicate
produces an effect that evalutates to `true`

To import and use `dropWhileEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.dropWhileEffect
```

**Signature**

```ts
export declare const dropWhileEffect: {
  <A, X extends A, R2, E2>(
    predicate: (a: X) => Effect.Effect<R2, E2, boolean>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, X extends A, R2, E2>(
    self: Stream<R, E, A>,
    predicate: (a: X) => Effect.Effect<R2, E2, boolean>
  ): Stream<R | R2, E | E2, A>
}
```
