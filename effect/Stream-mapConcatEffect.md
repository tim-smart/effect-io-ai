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
    f: (a: A) => Effect.Effect<R2, E2, Iterable<A2>>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, Iterable<A2>>
  ): Stream<R | R2, E | E2, A2>
}
```
