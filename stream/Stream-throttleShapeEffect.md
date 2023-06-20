# throttleShapeEffect

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the `costFn` effectful function.

To import and use `throttleShapeEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.throttleShapeEffect
```

**Signature**

```ts
export declare const throttleShapeEffect: {
  <A, R2, E2>(
    costFn: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>,
    units: number,
    duration: Duration.Duration
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(
    self: Stream<R, E, A>,
    costFn: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>,
    units: number,
    duration: Duration.Duration
  ): Stream<R | R2, E | E2, A>
}
```
