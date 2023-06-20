# interleaveWith

Combines this stream and the specified stream deterministically using the
stream of boolean values `pull` to control which stream to pull from next.
A value of `true` indicates to pull from this stream and a value of `false`
indicates to pull from the specified stream. Only consumes as many elements
as requested by the `pull` stream. If either this stream or the specified
stream are exhausted further requests for values from that stream will be
ignored.

To import and use `interleaveWith` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.interleaveWith
```

**Signature**

```ts
export declare const interleaveWith: {
  <R2, E2, A2, R3, E3>(that: Stream<R2, E2, A2>, decider: Stream<R3, E3, boolean>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R3 | R, E2 | E3 | E, A2 | A>
  <R, E, A, R2, E2, A2, R3, E3>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    decider: Stream<R3, E3, boolean>
  ): Stream<R | R2 | R3, E | E2 | E3, A | A2>
}
```
