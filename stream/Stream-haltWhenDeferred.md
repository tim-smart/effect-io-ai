# haltWhenDeferred

Halts the evaluation of this stream when the provided promise resolves.

If the promise completes with a failure, the stream will emit that failure.

To import and use `haltWhenDeferred` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.haltWhenDeferred
```

**Signature**

```ts
export declare const haltWhenDeferred: {
  <E2, _>(deferred: Deferred.Deferred<E2, _>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E2 | E, A>
  <R, E, A, E2, _>(self: Stream<R, E, A>, deferred: Deferred.Deferred<E2, _>): Stream<R, E | E2, A>
}
```
