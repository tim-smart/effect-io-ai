# aggregateWithinEither

Aggregates elements using the provided sink until it completes, or until
the delay signalled by the schedule has passed.

This operator divides the stream into two asynchronous islands. Operators
upstream of this operator run on one fiber, while downstream operators run
on another. Elements will be aggregated by the sink until the downstream
fiber pulls the aggregated value, or until the schedule's delay has passed.

Aggregated elements will be fed into the schedule to determine the delays
between pulls.

To import and use `aggregateWithinEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.aggregateWithinEither
```

**Signature**

```ts
export declare const aggregateWithinEither: {
  <R2, E2, A, A2, B, R3, C>(
    sink: Sink.Sink<R2, E2, A | A2, A2, B>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R3 | R, E2 | E, Either.Either<C, B>>
  <R, E, R2, E2, A, A2, B, R3, C>(
    self: Stream<R, E, A>,
    sink: Sink.Sink<R2, E2, A | A2, A2, B>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): Stream<R | R2 | R3, E | E2, Either.Either<C, B>>
}
```
