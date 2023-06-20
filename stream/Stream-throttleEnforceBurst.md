# throttleEnforceBurst

Like `throttleEnforce`, but with a configurable `burst` parameter.

To import and use `throttleEnforceBurst` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.throttleEnforceBurst
```

**Signature**

```ts
export declare const throttleEnforceBurst: {
  <A>(costFn: (chunk: Chunk.Chunk<A>) => number, units: number, duration: Duration.Duration, burst: number): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    costFn: (chunk: Chunk.Chunk<A>) => number,
    units: number,
    duration: Duration.Duration,
    burst: number
  ): Stream<R, E, A>
}
```
