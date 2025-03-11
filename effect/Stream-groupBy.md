## groupBy

More powerful version of `Stream.groupByKey`.

**Example**

```ts
import { Chunk, Effect, GroupBy, Stream } from "effect"

const groupByKeyResult = Stream.fromIterable([
  "Mary",
  "James",
  "Robert",
  "Patricia",
  "John",
  "Jennifer",
  "Rebecca",
  "Peter"
]).pipe(
  Stream.groupBy((name) => Effect.succeed([name.substring(0, 1), name]))
)

const stream = GroupBy.evaluate(groupByKeyResult, (key, stream) =>
  Stream.fromEffect(
    Stream.runCollect(stream).pipe(
      Effect.andThen((chunk) => [key, Chunk.size(chunk)] as const)
    )
  ))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [ [ 'M', 1 ], [ 'J', 3 ], [ 'R', 2 ], [ 'P', 2 ] ]
// }
```

**Signature**

```ts
declare const groupBy: { <A, K, V, E2, R2>(f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => GroupBy.GroupBy<K, V, E2 | E, R2 | R>; <A, E, R, K, V, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<readonly [K, V], E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): GroupBy.GroupBy<K, V, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2282)

Since v2.0.0