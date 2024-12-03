# race

Returns a stream that mirrors the first upstream to emit an item.
As soon as one of the upstream emits a first value, the other is interrupted.
The resulting stream will forward all items from the "winning" source stream.
Any upstream failures will cause the returned stream to fail.

To import and use `race` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.race
```

**Example**

```ts
import { Stream, Schedule, Console, Effect } from "effect"

const stream = Stream.fromSchedule(Schedule.spaced("2 millis")).pipe(
  Stream.race(Stream.fromSchedule(Schedule.spaced("1 millis"))),
  Stream.take(6),
  Stream.tap(Console.log)
)

Effect.runPromise(Stream.runDrain(stream))
// Output each millisecond from the first stream, the rest streams are interrupted
// 0
// 1
// 2
// 3
// 4
// 5
```

**Signature**

```ts
export declare const race: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL | AR, EL | ER, RL | RR>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL | AR, EL | ER, RL | RR>
}
```
