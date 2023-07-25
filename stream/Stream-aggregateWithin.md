# aggregateWithin

Like `aggregateWithinEither`, but only returns the `Right` results.

To import and use `aggregateWithin` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.aggregateWithin
```

**Signature**

```ts
export declare const aggregateWithin: {
  <R2, E2, A, A2, B, R3, C>(options: {
    readonly sink: Sink.Sink<R2, E2, A | A2, A2, B>
    readonly schedule: Schedule.Schedule<R3, Option.Option<B>, C>
  }): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R3 | R, E2 | E, B>
  <R, E, R2, E2, A, A2, B, R3, C>(
    self: Stream<R, E, A>,
    options: {
      readonly sink: Sink.Sink<R2, E2, A | A2, A2, B>
      readonly schedule: Schedule.Schedule<R3, Option.Option<B>, C>
    }
  ): Stream<R | R2 | R3, E | E2, B>
}
```
