# crossWith

Composes this stream with the specified stream to create a cartesian
product of elements with a specified function. The `that` stream would be
run multiple times, for every element in the `this` stream.

See also `Stream.zipWith` for the more common point-wise variant.

To import and use `crossWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.crossWith
```

**Signature**

```ts
export declare const crossWith: {
  <B, E2, R2, A, C>(
    that: Stream<B, E2, R2>,
    f: (a: A, b: B) => C
  ): <E, R>(self: Stream<A, E, R>) => Stream<C, E2 | E, R2 | R>
  <A, E, R, B, E2, R2, C>(
    self: Stream<A, E, R>,
    that: Stream<B, E2, R2>,
    f: (a: A, b: B) => C
  ): Stream<C, E | E2, R | R2>
}
```
