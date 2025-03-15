Package: `effect`<br />
Module: `Stream`<br />

## Stream.grouped

Partitions the stream with specified `chunkSize`.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.range(0, 8).pipe(Stream.grouped(3))

Effect.runPromise(Stream.runCollect(stream)).then((chunks) => console.log("%o", chunks))
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
declare const grouped: { (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Chunk.Chunk<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2369)

Since v2.0.0