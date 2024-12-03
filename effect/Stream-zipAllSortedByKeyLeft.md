# zipAllSortedByKeyLeft

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Keeps only values from this stream, using the specified
value `default` to fill in missing values.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

To import and use `zipAllSortedByKeyLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllSortedByKeyLeft
```

**Signature**

```ts
export declare const zipAllSortedByKeyLeft: {
  <A2, E2, R2, A, K>(options: {
    readonly other: Stream<readonly [K, A2], E2, R2>
    readonly defaultSelf: A
    readonly order: Order.Order<K>
  }): <E, R>(self: Stream<readonly [K, A], E, R>) => Stream<[K, A], E2 | E, R2 | R>
  <K, A, E, R, A2, E2, R2>(
    self: Stream<readonly [K, A], E, R>,
    options: {
      readonly other: Stream<readonly [K, A2], E2, R2>
      readonly defaultSelf: A
      readonly order: Order.Order<K>
    }
  ): Stream<[K, A], E | E2, R | R2>
}
```
