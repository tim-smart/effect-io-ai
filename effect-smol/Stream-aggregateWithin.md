Package: `effect`<br />
Module: `Stream`<br />

## Stream.aggregateWithin

Aggregates elements with a sink, emitting each result when the sink completes or the schedule triggers.

The schedule can flush the current aggregation even if the sink has not finished.

**Example**

```ts
import { Console, Effect, Schedule, Sink, Stream } from "effect"

Effect.runPromise(Effect.gen(function* () {
  const aggregated = yield* Stream.runCollect(
    Stream.make(1, 2, 3, 4, 5, 6).pipe(
      Stream.aggregateWithin(
        Sink.foldUntil(() => 0, 3, (sum, n) => Effect.succeed(sum + n)),
        Schedule.spaced("1 minute")
      )
    )
  )
  yield* Console.log(aggregated)
}))
// Output: [ 6, 15 ]
```

**Signature**

```ts
declare const aggregateWithin: { <B, A, A2, E2, R2, C, E3, R3>(sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, E3, R3>): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E | E3, R2 | R3 | R>; <A, E, R, B, A2, E2, R2, C, E3, R3>(self: Stream<A, E, R>, sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, E3, R3>): Stream<B, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7958)

Since v2.0.0