# zipAllSortedByKey

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Combines values associated with each key into a tuple,
using the specified values `defaultLeft` and `defaultRight` to fill in
missing values.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

To import and use `zipAllSortedByKey` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllSortedByKey
```

**Signature**

```ts
export declare const zipAllSortedByKey: {
  <R2, E2, A2, A, K>(options: {
    readonly other: Stream<R2, E2, readonly [K, A2]>
    readonly defaultSelf: A
    readonly defaultOther: A2
    readonly order: Order.Order<K>
  }): <R, E>(self: Stream<R, E, readonly [K, A]>) => Stream<R2 | R, E2 | E, [K, [A, A2]]>
  <R, E, R2, E2, A2, A, K>(
    self: Stream<R, E, readonly [K, A]>,
    options: {
      readonly other: Stream<R2, E2, readonly [K, A2]>
      readonly defaultSelf: A
      readonly defaultOther: A2
      readonly order: Order.Order<K>
    }
  ): Stream<R | R2, E | E2, [K, [A, A2]]>
}
```
