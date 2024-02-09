# scanEffect

Statefully and effectfully maps over the elements of this stream to produce
all intermediate results of type `S` given an initial S.

To import and use `scanEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.scanEffect
```

**Signature**

```ts
export declare const scanEffect: {
  <S, A, R2, E2>(
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<S, E2 | E, R2 | R>
  <R, E, S, A, R2, E2>(
    self: Stream<A, E, R>,
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Stream<S, E | E2, R | R2>
}
```
