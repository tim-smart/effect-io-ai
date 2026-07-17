Package: `effect`<br />
Module: `Stream`<br />

## Stream.race

Runs both streams concurrently until one stream emits its first value, then
mirrors that winning stream and interrupts the other.

**Details**

A failure or completion from one side before the other side emits does not
win the race unless both sides fail or complete before emitting. After a
winner is chosen, that stream's later failures are propagated.

**Example** (Racing two streams)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4270)

Since v3.7.0