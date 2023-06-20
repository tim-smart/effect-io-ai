# throttleShapeEffectBurst

Like `throttleShapeEffect`, but with a configurable `burst` parameter.

To import and use `throttleShapeEffectBurst` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.throttleShapeEffectBurst
```

**Signature**

```ts
export declare const throttleShapeEffectBurst: {
  <A, R2, E2>(
    costFn: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>,
    units: number,
    duration: Duration.Duration,
    burst: number
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(
    self: Stream<R, E, A>,
    costFn: (chunk: Chunk.Chunk<A>) => Effect.Effect<R2, E2, number>,
    units: number,
    duration: Duration.Duration,
    burst: number
  ): Stream<R | R2, E | E2, A>
}
```
