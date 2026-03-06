Package: `effect`<br />
Module: `Stream`<br />

## Stream.race

Returns a stream that mirrors the first upstream to emit an item.
As soon as one stream emits, the other is interrupted and failures propagate.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const stream = Stream.race(
  Stream.make(0, 1, 2),
  Stream.fromSchedule(Schedule.spaced("1 second"))
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 0, 1, 2 ]
```

**Signature**

```ts
declare const race: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL | AR, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL | AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3897)

Since v3.7.0