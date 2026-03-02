Package: `effect`<br />
Module: `Stream`<br />

## Stream.throttleEffect

Delays the arrays of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst processing by
allowing the bucket to accumulate tokens up to a `units + burst` threshold.
The weight of each array is determined by the effectful `cost` function.

If using the "enforce" strategy, arrays that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, arrays are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const stream = Stream.fromSchedule(Schedule.spaced("50 millis")).pipe(
  Stream.take(6),
  Stream.throttleEffect({
    cost: (arr) => Effect.succeed(arr.length),
    units: 1,
    duration: "100 millis",
    strategy: "shape"
  })
)

Effect.runPromise(Effect.gen(function*() {
  const result = yield* Stream.runCollect(stream)
  yield* Console.log(result)
}))
// Output: [0, 1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const throttleEffect: { <A, E2, R2>(options: { readonly cost: (arr: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<number, E2, R2>; readonly units: number; readonly duration: Duration.Input; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, options: { readonly cost: (arr: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<number, E2, R2>; readonly units: number; readonly duration: Duration.Input; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7302)

Since v2.0.0