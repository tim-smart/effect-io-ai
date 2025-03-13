Package: `effect`<br />
Module: `Stream`<br />

## Stream.throttle

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the `cost` function.

If using the "enforce" strategy, chunks that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, chunks are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

**Example**

```ts
import { Chunk, Effect, Schedule, Stream } from "effect"

let last = Date.now()
const log = (message: string) =>
  Effect.sync(() => {
    const end = Date.now()
    console.log(`${message} after ${end - last}ms`)
    last = end
  })

const stream = Stream.fromSchedule(Schedule.spaced("50 millis")).pipe(
  Stream.take(6),
  Stream.tap((n) => log(`Received ${n}`)),
  Stream.throttle({
    cost: Chunk.size,
    duration: "100 millis",
    units: 1
  }),
  Stream.tap((n) => log(`> Emitted ${n}`))
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// Received 0 after 56ms
// > Emitted 0 after 0ms
// Received 1 after 52ms
// > Emitted 1 after 48ms
// Received 2 after 52ms
// > Emitted 2 after 49ms
// Received 3 after 52ms
// > Emitted 3 after 48ms
// Received 4 after 52ms
// > Emitted 4 after 47ms
// Received 5 after 52ms
// > Emitted 5 after 49ms
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4, 5 ] }
```

**Signature**

```ts
declare const throttle: { <A>(options: { readonly cost: (chunk: Chunk.Chunk<A>) => number; readonly units: number; readonly duration: Duration.DurationInput; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly cost: (chunk: Chunk.Chunk<A>) => number; readonly units: number; readonly duration: Duration.DurationInput; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5011)

Since v2.0.0