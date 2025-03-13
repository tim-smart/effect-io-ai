Package: `effect`<br />
Module: `Stream`<br />

## Stream.throttleEffect

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the effectful `costFn` function.

If using the "enforce" strategy, chunks that do not meet the bandwidth
constraints are dropped. If using the "shape" strategy, chunks are delayed
until they can be emitted without exceeding the bandwidth constraints.

Defaults to the "shape" strategy.

**Signature**

```ts
declare const throttleEffect: { <A, E2, R2>(options: { readonly cost: (chunk: Chunk.Chunk<A>) => Effect.Effect<number, E2, R2>; readonly units: number; readonly duration: Duration.DurationInput; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, options: { readonly cost: (chunk: Chunk.Chunk<A>) => Effect.Effect<number, E2, R2>; readonly units: number; readonly duration: Duration.DurationInput; readonly burst?: number | undefined; readonly strategy?: "enforce" | "shape" | undefined; }): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5049)

Since v2.0.0