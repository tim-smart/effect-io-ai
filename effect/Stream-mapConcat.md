Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapConcat

Maps each element to an iterable, and flattens the iterables into the
output of this stream.

**Example**

```ts
import { Effect, Stream } from "effect"

const numbers = Stream.make("1-2-3", "4-5", "6").pipe(
  Stream.mapConcat((s) => s.split("-")),
  Stream.map((s) => parseInt(s))
)

Effect.runPromise(Stream.runCollect(numbers)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2, 3, 4, 5, 6 ] }
```

**Signature**

```ts
declare const mapConcat: { <A, A2>(f: (a: A) => Iterable<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, f: (a: A) => Iterable<A2>): Stream<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2831)

Since v2.0.0