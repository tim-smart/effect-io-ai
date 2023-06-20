# repeatElements

Repeats each element of the stream using the provided schedule. Repetitions
are done in addition to the first execution, which means using
`Schedule.recurs(1)` actually results in the original effect, plus an
additional recurrence, for a total of two repetitions of each value in the
stream.

To import and use `repeatElements` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.repeatElements
```

**Signature**

```ts
export declare const repeatElements: {
  <R2, B>(schedule: Schedule.Schedule<R2, unknown, B>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, E, A, R2, B>(self: Stream<R, E, A>, schedule: Schedule.Schedule<R2, unknown, B>): Stream<R | R2, E, A>
}
```
