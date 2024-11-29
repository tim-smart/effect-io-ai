# haltWhenDeferred

Halts the evaluation of this stream when the provided promise resolves.

If the promise completes with a failure, the stream will emit that failure.

To import and use `haltWhenDeferred` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.haltWhenDeferred
undefined

**Signature**

```ts
export declare const haltWhenDeferred: {
  <X, E2>(deferred: Deferred.Deferred<X, E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>
  <A, E, R, X, E2>(self: Stream<A, E, R>, deferred: Deferred.Deferred<X, E2>): Stream<A, E | E2, R>
}
```
