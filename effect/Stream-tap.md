# tap

Adds an effect to consumption of every element of the stream.

To import and use `tap` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tap
```

**Signature**

```ts
export declare const tap: {
  <A, X extends A, R2, E2, _>(
    f: (a: X) => Effect.Effect<R2, E2, _>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, X extends A, R2, E2, _>(
    self: Stream<R, E, A>,
    f: (a: X) => Effect.Effect<R2, E2, _>
  ): Stream<R | R2, E | E2, A>
}
```
