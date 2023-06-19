# aggregateWithin

Like `aggregateWithinEither`, but only returns the `Right` results.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const aggregateWithin: {
  <R2, E2, A, A2, B, R3, C>(
    sink: Sink.Sink<R2, E2, A | A2, A2, B>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R3 | R, E2 | E, B>
  <R, E, R2, E2, A, A2, B, R3, C>(
    self: Stream<R, E, A>,
    sink: Sink.Sink<R2, E2, A | A2, A2, B>,
    schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  ): Stream<R | R2 | R3, E | E2, B>
}
```
