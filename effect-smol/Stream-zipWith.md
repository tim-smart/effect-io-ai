Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWith

Zips two streams point-wise with a combining function, ending when either stream ends.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream1 = Stream.make(1, 2, 3, 4, 5, 6)
const stream2 = Stream.make("a", "b", "c")

const zipped = Stream.zipWith(stream1, stream2, (n, s) => `${n}-${s}`)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(zipped)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ "1-a", "2-b", "3-c" ]
```

**Signature**

```ts
declare const zipWith: { <AR, ER, RR, AL, A>(right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR, A>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): Stream<A, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3344)

Since v2.0.0