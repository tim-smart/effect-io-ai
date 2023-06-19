# crossWith

Composes this stream with the specified stream to create a cartesian
product of elements with a specified function. The `that` stream would be
run multiple times, for every element in the `this` stream.

See also `Stream.zipWith` for the more common point-wise variant.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const crossWith: {
  <R2, E2, B, A, C>(that: Stream<R2, E2, B>, f: (a: A, b: B) => C): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, C>
  <R, E, R2, E2, B, A, C>(self: Stream<R, E, A>, that: Stream<R2, E2, B>, f: (a: A, b: B) => C): Stream<
    R | R2,
    E | E2,
    C
  >
}
```
