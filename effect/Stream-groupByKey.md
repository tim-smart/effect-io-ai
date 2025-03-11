## groupByKey

Partition a stream using a function and process each stream individually.
This returns a data structure that can be used to further filter down which
groups shall be processed.

After calling apply on the GroupBy object, the remaining groups will be
processed in parallel and the resulting streams merged in a
nondeterministic fashion.

Up to `buffer` elements may be buffered in any group stream before the
producer is backpressured. Take care to consume from all streams in order
to prevent deadlocks.

For example, to collect the first 2 words for every starting letter from a
stream of words:

```ts
import { pipe, GroupBy, Stream } from "effect"

pipe(
  Stream.fromIterable(["hello", "world", "hi", "holla"]),
  Stream.groupByKey((word) => word[0]),
  GroupBy.evaluate((key, stream) =>
    pipe(
      stream,
      Stream.take(2),
      Stream.map((words) => [key, words] as const)
    )
  )
)
```

**Signature**

```ts
declare const groupByKey: { <A, K>(f: (a: A) => K, options?: { readonly bufferSize?: number | undefined; }): <E, R>(self: Stream<A, E, R>) => GroupBy.GroupBy<K, A, E, R>; <A, E, R, K>(self: Stream<A, E, R>, f: (a: A) => K, options?: { readonly bufferSize?: number | undefined; }): GroupBy.GroupBy<K, A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2329)

Since v2.0.0