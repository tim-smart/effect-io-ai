# zipAllSortedByKeyRight

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Keeps only values from that stream, using the specified
value `default` to fill in missing values.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

To import and use `zipAllSortedByKeyRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllSortedByKeyRight
```

**Signature**

```ts
export declare const zipAllSortedByKeyRight: {
  <R2, E2, A2, K>(options: {
    readonly other: Stream<readonly [K, A2], E2, R2>
    readonly defaultOther: A2
    readonly order: Order.Order<K>
  }): <A, E, R>(self: Stream<readonly [K, A], E, R>) => Stream<[K, A2], E2 | E, R2 | R>
  <R, E, A, R2, E2, A2, K>(
    self: Stream<readonly [K, A], E, R>,
    options: {
      readonly other: Stream<readonly [K, A2], E2, R2>
      readonly defaultOther: A2
      readonly order: Order.Order<K>
    }
  ): Stream<[K, A2], E | E2, R | R2>
}
```
