# groupByBuffer

Like `groupBy`, but with a configurable `bufferSize` parameter.

To import and use `groupByBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.groupByBuffer
```

**Signature**

```ts
export declare const groupByBuffer: {
  <A, R2, E2, K, V>(f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>, bufferSize: number): <R, E>(
    self: Stream<R, E, A>
  ) => GroupBy.GroupBy<R2 | R, E2 | E, K, V>
  <R, E, A, R2, E2, K, V>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>,
    bufferSize: number
  ): GroupBy.GroupBy<R | R2, E | E2, K, V>
}
```
