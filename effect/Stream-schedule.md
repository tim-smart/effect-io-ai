# schedule

Schedules the output of the stream using the provided `schedule`.

To import and use `schedule` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.schedule
```

**Signature**

```ts
export declare const schedule: {
  <R2, A, A0 extends A, _>(schedule: Schedule.Schedule<R2, A0, _>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E, A>
  <R, E, R2, A, A0 extends A, _>(self: Stream<R, E, A>, schedule: Schedule.Schedule<R2, A0, _>): Stream<R | R2, E, A>
}
```
