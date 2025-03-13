Package: `effect`<br />
Module: `Stream`<br />

## Stream.interleave

Interleaves this stream and the specified stream deterministically by
alternating pulling values from this stream and the specified stream. When
one stream is exhausted all remaining values in the other stream will be
pulled.

**Example**

```ts
import { Effect, Stream } from "effect"

const s1 = Stream.make(1, 2, 3)
const s2 = Stream.make(4, 5, 6)

const stream = Stream.interleave(s1, s2)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 4, 2, 5, 3, 6 ] }
```

**Signature**

```ts
declare const interleave: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2503)

Since v2.0.0