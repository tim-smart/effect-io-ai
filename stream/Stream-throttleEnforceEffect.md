# throttleEnforceEffect

Throttles the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. Chunks that do not meet the bandwidth
constraints are dropped. The weight of each chunk is determined by the
`costFn` effectful function.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const throttleEnforceEffect: {
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
