# interruptWhenDeferred

Interrupts the evaluation of this stream when the provided promise
resolves. This combinator will also interrupt any in-progress element being
pulled from upstream.

If the promise completes with a failure, the stream will emit that failure.

To import and use `interruptWhenDeferred` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.interruptWhenDeferred
undefined

**Signature**

```ts
export declare const interruptWhenDeferred: {
  <X, E2>(deferred: Deferred.Deferred<X, E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>
  <A, E, R, X, E2>(self: Stream<A, E, R>, deferred: Deferred.Deferred<X, E2>): Stream<A, E | E2, R>
}
```
