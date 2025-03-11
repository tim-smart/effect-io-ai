## zipWithIndex

Zips this stream together with the index of elements.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make("Mary", "James", "Robert", "Patricia")

const indexedStream = Stream.zipWithIndex(stream)

// Effect.runPromise(Stream.runCollect(indexedStream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [ [ 'Mary', 0 ], [ 'James', 1 ], [ 'Robert', 2 ], [ 'Patricia', 3 ] ]
// }
```

**Signature**

```ts
declare const zipWithIndex: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, number], E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6145)

Since v2.0.0