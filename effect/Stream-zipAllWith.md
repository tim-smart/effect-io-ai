Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipAllWith

Zips this stream with another point-wise. The provided functions will be
used to create elements for the composed stream.

The functions `left` and `right` will be used if the streams have different
lengths and one of the streams has ended before the other.

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.zipAllWith(Stream.make(1, 2, 3, 4, 5, 6), {
  other: Stream.make("a", "b", "c"),
  onSelf: (n) => [n, "x"],
  onOther: (s) => [0, s],
  onBoth: (n, s) => [n - s.length, s]
})

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: "Chunk", values: [ [ 0, "a" ], [ 1, "b" ], [ 2, "c" ], [ 4, "x" ], [ 5, "x" ], [ 6, "x" ] ] }
```

**Signature**

```ts
declare const zipAllWith: { <A2, E2, R2, A, A3>(options: { readonly other: Stream<A2, E2, R2>; readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A3; readonly onBoth: (a: A, a2: A2) => A3; }): <E, R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R>; <A, E, R, A2, E2, R2, A3>(self: Stream<A, E, R>, options: { readonly other: Stream<A2, E2, R2>; readonly onSelf: (a: A) => A3; readonly onOther: (a2: A2) => A3; readonly onBoth: (a: A, a2: A2) => A3; }): Stream<A3, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5824)

Since v2.0.0