Package: `effect`<br />
Module: `Stream`<br />

## Stream.aggregateWithinEither

Aggregates elements using the provided sink until it completes, or until
the delay signalled by the schedule has passed.

This operator divides the stream into two asynchronous islands. Operators
upstream of this operator run on one fiber, while downstream operators run
on another. Elements will be aggregated by the sink until the downstream
fiber pulls the aggregated value, or until the schedule's delay has passed.

Aggregated elements will be fed into the schedule to determine the delays
between pulls.

**Signature**

```ts
declare const aggregateWithinEither: { <B, A, A2, E2, R2, C, R3>(sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, R3>): <E, R>(self: Stream<A, E, R>) => Stream<Either.Either<B, C>, E2 | E, R2 | R3 | R>; <A, E, R, B, A2, E2, R2, C, R3>(self: Stream<A, E, R>, sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, R3>): Stream<Either.Either<B, C>, E | E2, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L283)

Since v2.0.0