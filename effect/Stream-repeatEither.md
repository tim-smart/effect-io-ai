# repeatEither

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.
The schedule output will be emitted at the end of each repetition.

To import and use `repeatEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatEither
```

**Signature**

```ts
export declare const repeatEither: {
  <R2, B>(
    schedule: Schedule.Schedule<R2, unknown, B>
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, Either.Either<B, A>>
  <R, E, A, R2, B>(
    self: Stream<R, E, A>,
    schedule: Schedule.Schedule<R2, unknown, B>
  ): Stream<R | R2, E, Either.Either<B, A>>
}
```
