# mapEffectParByKey

Maps over elements of the stream with the specified effectful function,
partitioned by `p` executing invocations of `f` concurrently. The number of
concurrent invocations of `f` is determined by the number of different
outputs of type `K`. Up to `buffer` elements may be buffered per partition.
Transformed elements may be reordered but the order within a partition is
maintained.

To import and use `mapEffectParByKey` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapEffectParByKey
```

**Signature**

```ts
export declare const mapEffectParByKey: {
  <R2, E2, A2, A, K>(keyBy: (a: A) => K, f: (a: A) => Effect.Effect<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, R2, E2, A2, A, K>(self: Stream<R, E, A>, keyBy: (a: A) => K, f: (a: A) => Effect.Effect<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
