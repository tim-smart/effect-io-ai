# scanEffect

Statefully and effectfully maps over the elements of this stream to produce
all intermediate results of type `S` given an initial S.

To import and use `scanEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scanEffect
```

**Signature**

```ts
export declare const scanEffect: {
  <S, A, R2, E2>(s: S, f: (s: S, a: A) => Effect.Effect<R2, E2, S>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, S>
  <R, E, S, A, R2, E2>(self: Stream<R, E, A>, s: S, f: (s: S, a: A) => Effect.Effect<R2, E2, S>): Stream<
    R | R2,
    E | E2,
    S
  >
}
```
