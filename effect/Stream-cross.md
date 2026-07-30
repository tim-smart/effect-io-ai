Package: `effect`<br />
Module: `Stream`<br />

## Stream.cross

Composes this stream with the specified stream to create a cartesian
product of elements. The `right` stream would be run multiple times, for
every element in the `left` stream.

See also `Stream.zip` for the more common point-wise variant.

**Example**

```ts
import { Effect, Stream } from "effect"

const s1 = Stream.make(1, 2, 3)
const s2 = Stream.make("a", "b")

const product = Stream.cross(s1, s2)

Effect.runPromise(Stream.runCollect(product)).then(console.log)
// {
//   _id: "Chunk",
//   values: [
//     [ 1, "a" ], [ 1, "b" ], [ 2, "a" ], [ 2, "b" ], [ 3, "a" ], [ 3, "b" ]
//   ]
// }
```

**Signature**

```ts
declare const cross: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<[AL, AR], EL | ER, RL | RR>; <AL, ER, RR, AR, EL, RL>(left: Stream<AL, ER, RR>, right: Stream<AR, EL, RL>): Stream<[AL, AR], EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1126)

Since v2.0.0