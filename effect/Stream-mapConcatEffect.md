# mapConcatEffect

Effectfully maps each element to an iterable, and flattens the iterables
into the output of this stream.

To import and use `mapConcatEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapConcatEffect
```

**Signature**

```ts
export declare const mapConcatEffect: {
  <A, R2, E2, A2>(
    f: (a: A) => Effect.Effect<Iterable<A2>, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<Iterable<A2>, E2, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
