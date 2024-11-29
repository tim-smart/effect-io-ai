# zipLatest

Zips the two streams so that when a value is emitted by either of the two
streams, it is combined with the latest value from the other stream to
produce a result.

Note: tracking the latest value is done on a per-chunk basis. That means
that emitted elements that are not the last value in chunks will never be
used for zipping.

To import and use `zipLatest` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipLatest
undefined

**Example**

```ts
import { Effect, Schedule, Stream } from "effect"

const s1 = Stream.make(1, 2, 3).pipe(Stream.schedule(Schedule.spaced("1 second")))

const s2 = Stream.make("a", "b", "c", "d").pipe(Stream.schedule(Schedule.spaced("500 millis")))

const stream = Stream.zipLatest(s1, s2)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: "Chunk", values: [ [ 1, "a" ], [ 1, "b" ], [ 2, "b" ], [ 2, "c" ], [ 2, "d" ], [ 3, "d" ] ] }
```

**Signature**

```ts
export declare const zipLatest: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<[AL, AR], EL | ER, RL | RR>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<[AL, AR], EL | ER, RL | RR>
}
```
