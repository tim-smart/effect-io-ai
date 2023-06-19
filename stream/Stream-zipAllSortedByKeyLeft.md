# zipAllSortedByKeyLeft

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Keeps only values from this stream, using the specified
value `default` to fill in missing values.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipAllSortedByKeyLeft: {
  <R2, E2, A2, A, K>(that: Stream<R2, E2, readonly [K, A2]>, defaultLeft: A, order: Order.Order<K>): <R, E>(
    self: Stream<R, E, readonly [K, A]>
  ) => Stream<R2 | R, E2 | E, readonly [K, A]>
  <R, E, R2, E2, A2, A, K>(
    self: Stream<R, E, readonly [K, A]>,
    that: Stream<R2, E2, readonly [K, A2]>,
    defaultLeft: A,
    order: Order.Order<K>
  ): Stream<R | R2, E | E2, readonly [K, A]>
}
```
