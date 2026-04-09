Package: `effect`<br />
Module: `Stream`<br />

## Stream.cross

Creates the cartesian product of two streams, running the `right` stream for
each element in the `left` stream.

See also `Stream.zip` for the more common point-wise variant.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const left = Stream.make(1, 2)
  const right = Stream.make("a", "b")
  const values = yield* Stream.runCollect(Stream.cross(left, right))
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ [ 1, "a" ], [ 1, "b" ], [ 2, "a" ], [ 2, "b" ] ]
```

**Signature**

```ts
declare const cross: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<[AL, AR], EL | ER, RL | RR>; <AL, ER, RR, AR, EL, RL>(left: Stream<AL, ER, RR>, right: Stream<AR, EL, RL>): Stream<[AL, AR], EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3270)

Since v2.0.0