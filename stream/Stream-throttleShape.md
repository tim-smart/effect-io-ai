# throttleShape

Delays the chunks of this stream according to the given bandwidth
parameters using the token bucket algorithm. Allows for burst in the
processing of elements by allowing the token bucket to accumulate tokens up
to a `units + burst` threshold. The weight of each chunk is determined by
the `costFn` function.

To import and use `throttleShape` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.throttleShape
```

**Signature**

```ts
export declare const throttleShape: {
  <A>(costFn: (chunk: Chunk.Chunk<A>) => number, units: number, duration: Duration.Duration): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    costFn: (chunk: Chunk.Chunk<A>) => number,
    units: number,
    duration: Duration.Duration
  ): Stream<R, E, A>
}
```
