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
  <R2, E2, _>(effect: Effect.Effect<R2, E2, _>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, _>(self: Stream<R, E, A>, effect: Effect.Effect<R2, E2, _>): Stream<R | R2, E | E2, A>
}
```
