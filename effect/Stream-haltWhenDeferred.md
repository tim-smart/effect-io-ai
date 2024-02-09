# haltWhenDeferred

Halts the evaluation of this stream when the provided promise resolves.

If the promise completes with a failure, the stream will emit that failure.

To import and use `haltWhenDeferred` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.haltWhenDeferred
```

**Signature**

```ts
export declare const haltWhenDeferred: {
  <E2, _>(deferred: Deferred.Deferred<_, E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>
  <R, E, A, E2, _>(self: Stream<A, E, R>, deferred: Deferred.Deferred<_, E2>): Stream<A, E | E2, R>
}
```
