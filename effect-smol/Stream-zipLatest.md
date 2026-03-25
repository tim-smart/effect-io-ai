Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipLatest

Combines two streams by emitting each new element with the latest value from the other stream.

Note: tracking the latest value is done on a per-array basis. That means
that emitted elements that are not the last value in arrays will never be
used for zipping.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.zipLatest(
    Stream.make(1),
    Stream.make("a")
  ).pipe(Stream.runCollect)

  yield* Console.log(result)
})
// Output: [ [1, "a"] ]
```

**Signature**

```ts
declare const zipLatest: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<[AL, AR], EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<[AL, AR], EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3838)

Since v2.0.0