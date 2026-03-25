Package: `effect`<br />
Module: `Stream`<br />

## Stream.raceAll

Races multiple streams and emits values from the first stream to produce a value, interrupting the rest.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.raceAll(
    Stream.fromSchedule(Schedule.spaced("1 second")),
    Stream.make(0, 1, 2)
  ).pipe(Stream.runCollect)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 0, 1, 2 ]
```

**Signature**

```ts
declare const raceAll: <S extends ReadonlyArray<Stream<any, any, any>>>(...streams: S) => Stream<Success<S[number]>, Error<S[number]>, Services<S[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3925)

Since v3.7.0