# scheduleWith

Schedules the output of the stream using the provided `schedule` and emits
its output at the end (if `schedule` is finite). Uses the provided function
to align the stream and schedule outputs on the same type.

To import and use `scheduleWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.scheduleWith
```

**Signature**

```ts
export declare const scheduleWith: {
  <R2, A, A0 extends A, B, C>(
    schedule: Schedule.Schedule<R2, A0, B>,
    options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C }
  ): <R, E>(self: Stream<A, E, R>) => Stream<C, E, R2 | R>
  <R, E, R2, A, A0 extends A, B, C>(
    self: Stream<A, E, R>,
    schedule: Schedule.Schedule<R2, A0, B>,
    options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C }
  ): Stream<C, E, R | R2>
}
```
