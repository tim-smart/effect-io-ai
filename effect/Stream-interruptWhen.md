# interruptWhen

Interrupts the evaluation of this stream when the provided effect
completes. The given effect will be forked as part of this stream, and its
success will be discarded. This combinator will also interrupt any
in-progress element being pulled from upstream.

If the effect completes with a failure before the stream completes, the
returned stream will emit that failure.

To import and use `interruptWhen` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.interruptWhen
```

**Signature**

```ts
export declare const interruptWhen: {
  <X, E2, R2>(effect: Effect.Effect<X, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, X, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>
}
```
