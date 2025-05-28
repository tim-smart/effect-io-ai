Package: `effect`<br />
Module: `Stream`<br />

## Stream.raceAll

Returns a stream that mirrors the first upstream to emit an item.
As soon as one of the upstream emits a first value, all the others are interrupted.
The resulting stream will forward all items from the "winning" source stream.
Any upstream failures will cause the returned stream to fail.

**Example**

```ts
import { Stream, Schedule, Console, Effect } from "effect"

const stream = Stream.raceAll(
  Stream.fromSchedule(Schedule.spaced('1 millis')),
  Stream.fromSchedule(Schedule.spaced('2 millis')),
  Stream.fromSchedule(Schedule.spaced('4 millis')),
).pipe(Stream.take(6), Stream.tap(Console.log))

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
declare const raceAll: <S extends ReadonlyArray<Stream<any, any, any>>>(...streams: S) => Stream<Stream.Success<S[number]>, Stream.Error<S[number]>, Stream.Context<S[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3788)

Since v3.5.0