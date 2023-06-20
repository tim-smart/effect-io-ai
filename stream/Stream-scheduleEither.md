# scheduleEither

Schedules the output of the stream using the provided `schedule` and emits
its output at the end (if `schedule` is finite).

To import and use `scheduleEither` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scheduleEither
```

**Signature**

```ts
export declare const scheduleEither: {
  <R2, A, B>(schedule: Schedule.Schedule<R2, A, B>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E, Either.Either<B, A>>
  <R, E, R2, A, B>(self: Stream<R, E, A>, schedule: Schedule.Schedule<R2, A, B>): Stream<R | R2, E, Either.Either<B, A>>
}
```
