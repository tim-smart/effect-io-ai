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
  <B, A, A2, E2, R2, R3, C>(
    sink: Sink.Sink<B, A | A2, A2, E2, R2>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): <E, R>(self: Stream<A, E, R>) => Stream<Either.Either<C, B>, E2 | E, R2 | R3 | R>
  <A, E, R, B, A2, E2, R2, R3, C>(
    self: Stream<A, E, R>,
    sink: Sink.Sink<B, A | A2, A2, E2, R2>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): Stream<Either.Either<C, B>, E | E2, R | R2 | R3>
}
```
