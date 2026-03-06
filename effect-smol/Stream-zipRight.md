Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipRight

Zips this stream with another point-wise, keeping only right values and ending when either stream ends.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream1 = Stream.make(1, 2)
const stream2 = Stream.make("a", "b", "c", "d")

const program = Effect.gen(function*() {
  const result = yield* Stream.zipRight(stream1, stream2).pipe(Stream.runCollect)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: ["a", "b"]
```

**Signature**

```ts
declare const zipRight: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3439)

Since v2.0.0