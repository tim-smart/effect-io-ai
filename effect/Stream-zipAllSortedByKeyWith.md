# zipAllSortedByKeyWith

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Uses the functions `left`, `right`, and `both` to handle
the cases where a key and value exist in this stream, that stream, or
both streams.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

To import and use `zipAllSortedByKeyWith` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipAllSortedByKeyWith
```

**Signature**

```ts
export declare const zipAllSortedByKeyWith: {
  <R2, E2, A, A3, A2, K>(options: {
    readonly other: Stream<R2, E2, readonly [K, A2]>
    readonly onSelf: (a: A) => A3
    readonly onOther: (a2: A2) => A3
    readonly onBoth: (a: A, a2: A2) => A3
    readonly order: Order.Order<K>
  }): <R, E>(self: Stream<R, E, readonly [K, A]>) => Stream<R2 | R, E2 | E, readonly [K, A3]>
  <R, E, R2, E2, A, A3, A2, K>(
    self: Stream<R, E, readonly [K, A]>,
    options: {
      readonly other: Stream<R2, E2, readonly [K, A2]>
      readonly onSelf: (a: A) => A3
      readonly onOther: (a2: A2) => A3
      readonly onBoth: (a: A, a2: A2) => A3
      readonly order: Order.Order<K>
    }
  ): Stream<R | R2, E | E2, readonly [K, A3]>
}
```
