Package: `effect`<br />
Module: `Stream`<br />

## Stream.aggregate

Aggregates elements using the provided sink and emits each sink result as a stream element.

The stream runs the upstream and downstream in separate fibers, so the sink can keep
consuming input while downstream is busy processing the previous output.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

Effect.runPromise(Effect.gen(function* () {
  const aggregated = yield* Stream.runCollect(
    Stream.make(1, 2, 3, 4, 5, 6).pipe(
      Stream.aggregate(
        Sink.foldUntil(() => 0, 3, (sum, n) => Effect.succeed(sum + n))
      )
    )
  )
  yield* Console.log(aggregated)
}))
// [ 6, 15 ]
```

**Signature**

```ts
declare const aggregate: { <B, A, A2, E2, R2>(sink: Sink.Sink<B, A | A2, A2, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R>; <A, E, R, B, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<B, A | A2, A2, E2, R2>): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7932)

Since v2.0.0