# throttleEffect

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the effectful `costFn` function.

If using the "enforce" strategy, chunks that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, chunks are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

To import and use `throttleEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.throttleEffect
```

**Signature**

```ts
export declare const throttleEffect: {
  <A, R2, E2>(options: {
    readonly cost: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>
    readonly units: number
    readonly duration: Duration.Duration
    readonly burst?: number | undefined
    readonly strategy?: 'enforce' | 'shape' | undefined
  }): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(
    self: Stream<R, E, A>,
    options: {
      readonly cost: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>
      readonly units: number
      readonly duration: Duration.Duration
      readonly burst?: number | undefined
      readonly strategy?: 'enforce' | 'shape' | undefined
    }
  ): Stream<R | R2, E | E2, A>
}
```
