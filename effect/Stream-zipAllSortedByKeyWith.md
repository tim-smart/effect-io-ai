## zipAllSortedByKeyWith

Zips this stream that is sorted by distinct keys and the specified stream
that is sorted by distinct keys to produce a new stream that is sorted by
distinct keys. Uses the functions `left`, `right`, and `both` to handle
the cases where a key and value exist in this stream, that stream, or
both streams.

This allows zipping potentially unbounded streams of data by key in
constant space but the caller is responsible for ensuring that the
streams are sorted by distinct keys.

**Signature**

```ts
declare const zipAllSortedByKeyWith: { <K, A2, E2, R2, A, A3>(options: { readonly other: Stream<readonly [K, A2], E2, R2>; readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A3; readonly onBoth: (a: A, a2: A2) => A3; readonly order: Order.Order<K>; }): <E, R>(self: Stream<readonly [K, A], E, R>) => Stream<[K, A3], E2 | E, R2 | R>; <K, A, E, R, A2, E2, R2, A3>(self: Stream<readonly [K, A], E, R>, options: { readonly other: Stream<readonly [K, A2], E2, R2>; readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A3; readonly onBoth: (a: A, a2: A2) => A3; readonly order: Order.Order<K>; }): Stream<[K, A3], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5777)

Since v2.0.0