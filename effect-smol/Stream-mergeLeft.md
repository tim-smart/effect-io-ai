Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeLeft

Merges two streams while emitting only the values from the left stream.

The right stream still runs for its effects, and any failures from the right
stream are propagated. The merged stream completes when the left stream
completes, interrupting the right stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const left = Stream.make(1, 2)
  const right = Stream.make("a", "b")
  const values = yield* left.pipe(Stream.mergeLeft(right), Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const mergeLeft: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3077)

Since v2.0.0