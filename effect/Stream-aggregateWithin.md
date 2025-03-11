## aggregateWithin

Like `aggregateWithinEither`, but only returns the `Right` results.

**Signature**

```ts
declare const aggregateWithin: { <B, A, A2, E2, R2, C, R3>(sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, R3>): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R3 | R>; <A, E, R, B, A2, E2, R2, C, R3>(self: Stream<A, E, R>, sink: Sink.Sink<B, A | A2, A2, E2, R2>, schedule: Schedule.Schedule<C, Option.Option<B>, R3>): Stream<B, E | E2, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L255)

Since v2.0.0