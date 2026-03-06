Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipLeft

Zips this stream with another point-wise and keeps only the values from
the left stream.

The resulting stream ends when either side ends.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream1 = Stream.make(1, 2, 3, 4)
const stream2 = Stream.make("a", "b")

const program = Effect.gen(function*() {
  const result = yield* Stream.zipLeft(stream1, stream2).pipe(Stream.runCollect)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [1, 2]
```

**Signature**

```ts
declare const zipLeft: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3398)

Since v2.0.0