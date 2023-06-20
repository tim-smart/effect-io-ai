# mapEffectParByKeyBuffer

Like `mapEffectParByKey`, but with a `bufferSize` parameter.

To import and use `mapEffectParByKeyBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mapEffectParByKeyBuffer
```

**Signature**

```ts
export declare const mapEffectParByKeyBuffer: {
  <R2, E2, A2, A, K>(keyBy: (a: A) => K, bufferSize: number, f: (a: A) => Effect.Effect<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, R2, E2, A2, A, K>(
    self: Stream<R, E, A>,
    keyBy: (a: A) => K,
    bufferSize: number,
    f: (a: A) => Effect.Effect<R2, E2, A2>
  ): Stream<R | R2, E | E2, A2>
}
```
