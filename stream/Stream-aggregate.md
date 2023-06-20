# aggregate

Aggregates elements of this stream using the provided sink for as long as
the downstream operators on the stream are busy.

This operator divides the stream into two asynchronous "islands". Operators
upstream of this operator run on one fiber, while downstream operators run
on another. Whenever the downstream fiber is busy processing elements, the
upstream fiber will feed elements into the sink until it signals
completion.

Any sink can be used here, but see `Sink.foldWeightedEffect` and
`Sink.foldUntilEffect` for sinks that cover the common usecases.

To import and use `aggregate` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.aggregate
```

**Signature**

```ts
export declare const aggregate: {
  <R2, E2, A, A2, B>(sink: Sink.Sink<R2, E2, A | A2, A2, B>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, B>
  <R, E, R2, E2, A, A2, B>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A | A2, A2, B>): Stream<R | R2, E | E2, B>
}
```
