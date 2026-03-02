Package: `effect`<br />
Module: `Stream`<br />

## Stream.throttle

Delays the arrays of this stream using a token bucket and a per-array cost.
Allows bursts by letting the bucket accumulate up to a `units + burst`
threshold. The weight of each array is determined by the `cost` function.

If using the "enforce" strategy, arrays that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, arrays are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const stream = Stream.fromSchedule(Schedule.spaced("50 millis")).pipe(
  Stream.take(6),
  Stream.throttle({
    cost: (arr) => arr.length,
    units: 1,
    duration: "100 millis",
    strategy: "shape"
  })
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
  // Output: [ 0, 1, 2, 3, 4, 5 ]
})
```

**Signature**

```ts
declare const throttle: { <A>(options: { readonly cost: (arr: Arr.NonEmptyReadonlyArray<A>) => number; readonly units: number; readonly duration: Duration.Input; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, options: { readonly cost: (arr: Arr.NonEmptyReadonlyArray<A>) => number; readonly units: number; readonly duration: Duration.Input; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7458)

Since v2.0.0