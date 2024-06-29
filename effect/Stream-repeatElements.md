# repeatElements

Repeats each element of the stream using the provided schedule. Repetitions
are done in addition to the first execution, which means using
`Schedule.recurs(1)` actually results in the original effect, plus an
additional recurrence, for a total of two repetitions of each value in the
stream.

To import and use `repeatElements` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatElements
```

**Signature**

```ts
export declare const repeatElements: {
  <B, R2>(schedule: Schedule.Schedule<B, unknown, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <A, E, R, B, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>): Stream<A, E, R | R2>
}
```
