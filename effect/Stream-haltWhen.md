# haltWhen

Halts the evaluation of this stream when the provided effect completes. The
given effect will be forked as part of the returned stream, and its success
will be discarded.

An element in the process of being pulled will not be interrupted when the
effect completes. See `interruptWhen` for this behavior.

If the effect completes with a failure, the stream will emit that failure.

To import and use `haltWhen` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.haltWhen
```

**Signature**

```ts
export declare const haltWhen: {
  <X, E2, R2>(effect: Effect.Effect<X, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, X, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>
}
```
