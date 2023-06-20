# scheduleWith

Schedules the output of the stream using the provided `schedule` and emits
its output at the end (if `schedule` is finite). Uses the provided function
to align the stream and schedule outputs on the same type.

To import and use `scheduleWith` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scheduleWith
```

**Signature**

```ts
export declare const scheduleWith: {
  <R2, A, B, C>(schedule: Schedule.Schedule<R2, A, B>, f: (a: A) => C, g: (b: B) => C): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E, C>
  <R, E, R2, A, B, C>(
    self: Stream<R, E, A>,
    schedule: Schedule.Schedule<R2, A, B>,
    f: (a: A) => C,
    g: (b: B) => C
  ): Stream<R | R2, E, C>
}
```
