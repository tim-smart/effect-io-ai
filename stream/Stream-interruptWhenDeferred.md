# interruptWhenDeferred

Interrupts the evaluation of this stream when the provided promise
resolves. This combinator will also interrupt any in-progress element being
pulled from upstream.

If the promise completes with a failure, the stream will emit that failure.

To import and use `interruptWhenDeferred` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.interruptWhenDeferred
```

**Signature**

```ts
export declare const interruptWhenDeferred: {
  <E2, _>(deferred: Deferred.Deferred<E2, _>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E2 | E, A>
  <R, E, A, E2, _>(self: Stream<R, E, A>, deferred: Deferred.Deferred<E2, _>): Stream<R, E | E2, A>
}
```
