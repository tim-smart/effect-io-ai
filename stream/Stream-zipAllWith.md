# zipAllWith

Zips this stream with another point-wise. The provided functions will be
used to create elements for the composed stream.

The functions `left` and `right` will be used if the streams have different
lengths and one of the streams has ended before the other.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipAllWith: {
  <R2, E2, A2, A, A3>(
    that: Stream<R2, E2, A2>,
    left: (a: A) => A3,
    right: (a2: A2) => A3,
    both: (a: A, a2: A2) => A3
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A3>
  <R, E, R2, E2, A2, A, A3>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    left: (a: A) => A3,
    right: (a2: A2) => A3,
    both: (a: A, a2: A2) => A3
  ): Stream<R | R2, E | E2, A3>
}
```
