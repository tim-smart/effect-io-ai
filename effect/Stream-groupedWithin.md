Package: `effect`<br />
Module: `Stream`<br />

## Stream.groupedWithin

Partitions the stream with the specified `chunkSize` or until the specified
`duration` has passed, whichever is satisfied first.

**Example**

```ts
import { Chunk, Effect, Schedule, Stream } from "effect"

const stream = Stream.range(0, 9).pipe(
  Stream.repeat(Schedule.spaced("1 second")),
  Stream.groupedWithin(18, "1.5 seconds"),
  Stream.take(3)
)

Effect.runPromise(Stream.runCollect(stream)).then((chunks) => console.log(Chunk.toArray(chunks)))
// [
//   {
//     _id: 'Chunk',
//     values: [
//       0, 1, 2, 3, 4, 5, 6,
//       7, 8, 9, 0, 1, 2, 3,
//       4, 5, 6, 7
//     ]
//   },
//   {
//     _id: 'Chunk',
//     values: [
//       8, 9, 0, 1, 2,
//       3, 4, 5, 6, 7,
//       8, 9
//     ]
//   },
//   {
//     _id: 'Chunk',
//     values: [
//       0, 1, 2, 3, 4, 5, 6,
//       7, 8, 9, 0, 1, 2, 3,
//       4, 5, 6, 7
//     ]
//   }
// ]
```

**Signature**

```ts
declare const groupedWithin: { (chunkSize: number, duration: Duration.DurationInput): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number, duration: Duration.DurationInput): Stream<Chunk.Chunk<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2420)

Since v2.0.0