# crossLeft

Composes this stream with the specified stream to create a cartesian
product of elements, but keeps only elements from this stream. The `that`
stream would be run multiple times, for every element in the `this` stream.

See also `Stream.zipLeft` for the more common point-wise variant.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const crossLeft: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A>
}
```
