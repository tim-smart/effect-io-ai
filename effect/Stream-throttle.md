# throttle

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the `costFn` function.

If using the "enforce" strategy, chunks that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, chunks are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

To import and use `throttle` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.throttle
```

**Signature**

```ts
export declare const throttle: {
  <A>(options: {
    readonly cost: (chunk: Chunk.Chunk<A>) => number
    readonly units: number
    readonly duration: Duration.DurationInput
    readonly burst?: number | undefined
    readonly strategy?: "enforce" | "shape" | undefined
  }): <R, E>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(
    self: Stream<A, E, R>,
    options: {
      readonly cost: (chunk: Chunk.Chunk<A>) => number
      readonly units: number
      readonly duration: Duration.DurationInput
      readonly burst?: number | undefined
      readonly strategy?: "enforce" | "shape" | undefined
    }
  ): Stream<A, E, R>
}
```
