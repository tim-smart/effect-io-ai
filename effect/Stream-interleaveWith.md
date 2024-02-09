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
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.interleaveWith
```

**Signature**

```ts
export declare const interleaveWith: {
  <R2, E2, A2, R3, E3>(
    that: Stream<A2, E2, R2>,
    decider: Stream<boolean, E3, R3>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E3 | E, R2 | R3 | R>
  <R, E, A, R2, E2, A2, R3, E3>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    decider: Stream<boolean, E3, R3>
  ): Stream<A | A2, E | E2 | E3, R | R2 | R3>
}
```
