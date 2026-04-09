Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeRight

Merges this stream and the specified stream together, emitting only the
values from the right stream while the left stream runs for its effects.

The merged stream ends when the right stream completes, interrupting the
left stream. Failures from the left stream still fail the merged stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const left = Stream.make("left-1", "left-2").pipe(
  Stream.tap(() => Effect.sync(() => undefined))
)
const right = Stream.make(1, 2)

const merged = Stream.mergeRight(left, right)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(merged)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2 ]
```

**Signature**

```ts
declare const mergeRight: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3189)

Since v2.0.0