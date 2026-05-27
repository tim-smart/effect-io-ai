Package: `effect`<br />
Module: `Stream`<br />

## Stream.raceAll

Runs all streams concurrently until one stream emits its first value, then
mirrors that winning stream and interrupts the rest.

**Details**

Failures or completion from losing streams before a winner is chosen are
ignored unless every stream fails or completes before emitting. After a
winner is chosen, that stream's later failures are propagated.

**Example** (Racing multiple streams)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4207)

Since v3.5.0