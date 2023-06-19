# zipLatestWith

Zips the two streams so that when a value is emitted by either of the two
streams, it is combined with the latest value from the other stream to
produce a result.

Note: tracking the latest value is done on a per-chunk basis. That means
that emitted elements that are not the last value in chunks will never be
used for zipping.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipLatestWith: {
  <R2, E2, A2, A, A3>(that: Stream<R2, E2, A2>, f: (a: A, a2: A2) => A3): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A3>
  <R, E, R2, E2, A2, A, A3>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>, f: (a: A, a2: A2) => A3): Stream<
    R | R2,
    E | E2,
    A3
  >
}
```
