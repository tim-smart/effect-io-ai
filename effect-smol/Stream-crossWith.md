Package: `effect`<br />
Module: `Stream`<br />

## Stream.crossWith

Creates a cartesian product of elements from two streams using a function.

The `right` stream is rerun for every element in the `left` stream.

See also `Stream.zipWith` for the more common point-wise variant.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const left = Stream.make(1, 2)
  const right = Stream.make("a", "b")
  const combined = Stream.crossWith(left, right, (n, s) => `${n}-${s}`)
  const result = yield* Stream.runCollect(combined)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ "1-a", "1-b", "2-a", "2-b" ]
```

**Signature**

```ts
declare const crossWith: { <AR, ER, RR, AL, A>(right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR, A>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): Stream<A, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3304)

Since v2.0.0