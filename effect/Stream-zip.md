Package: `effect`<br />
Module: `Stream`<br />

## Stream.zip

Zips this stream with another point-wise and emits tuples of elements from
both streams.

The new stream will end when one of the sides ends.

**Example**

```ts
import { Effect, Stream } from "effect"

// We create two streams and zip them together.
const stream = Stream.zip(
  Stream.make(1, 2, 3, 4, 5, 6),
  Stream.make("a", "b", "c")
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ [ 1, 'a' ], [ 2, 'b' ], [ 3, 'c' ] ] }
```

**Signature**

```ts
declare const zip: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<[A, A2], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5627)

Since v2.0.0