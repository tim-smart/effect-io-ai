# grouped

Partitions the stream with specified `chunkSize`.

To import and use `grouped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.grouped
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(0, 8).pipe(Stream.grouped(3))

// Effect.runPromise(Stream.runCollect(stream)).then((chunks) => console.log("%o", chunks))
// {
//   _id: 'Chunk',
//   values: [
//     { _id: 'Chunk', values: [ 0, 1, 2, [length]: 3 ] },
//     { _id: 'Chunk', values: [ 3, 4, 5, [length]: 3 ] },
//     { _id: 'Chunk', values: [ 6, 7, 8, [length]: 3 ] },
//     [length]: 3
//   ]
// }
```

**Signature**

```ts
export declare const grouped: {
  (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Chunk.Chunk<A>, E, R>
}
```
