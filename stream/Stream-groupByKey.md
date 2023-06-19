# groupByKey

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
import * as GroupBy from '@effect/stream/GroupBy'
import * as Stream from '@effect/stream/Stream'
import { pipe } from '@effect/data/Function'

pipe(
  Stream.fromIterable(['hello', 'world', 'hi', 'holla']),
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

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const groupByKey: {
  <A, K>(f: (a: A) => K): <R, E>(self: Stream<R, E, A>) => GroupBy.GroupBy<R, E, K, A>
  <R, E, A, K>(self: Stream<R, E, A>, f: (a: A) => K): GroupBy.GroupBy<R, E, K, A>
}
```
