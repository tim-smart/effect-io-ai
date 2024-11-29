# scanReduceEffect

Statefully and effectfully maps over the elements of this stream to produce
all intermediate results.

See also `Stream.scanEffect`.

To import and use `scanReduceEffect` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.scanReduceEffect
undefined

**Signature**

```ts
export declare const scanReduceEffect: {
  <A2, A, E2, R2>(
    f: (a2: A2 | A, a: A) => Effect.Effect<A2 | A, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    f: (a2: A | A2, a: A) => Effect.Effect<A | A2, E2, R2>
  ): Stream<A | A2, E | E2, R | R2>
}
```
