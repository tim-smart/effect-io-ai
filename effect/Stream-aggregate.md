Package: `effect`<br />
Module: `Stream`<br />

## Stream.aggregate

Aggregates elements of this stream using the provided sink for as long as
the downstream operators on the stream are busy.

This operator divides the stream into two asynchronous "islands". Operators
upstream of this operator run on one fiber, while downstream operators run
on another. Whenever the downstream fiber is busy processing elements, the
upstream fiber will feed elements into the sink until it signals
completion.

Any sink can be used here, but see `Sink.foldWeightedEffect` and
`Sink.foldUntilEffect` for sinks that cover the common usecases.

**Signature**

```ts
declare const aggregate: { <B, A, A2, E2, R2>(sink: Sink.Sink<B, A | A2, A2, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R>; <A, E, R, B, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<B, A | A2, A2, E2, R2>): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L245)

Since v2.0.0