# repeatWith

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.
The schedule output will be emitted at the end of each repetition and can
be unified with the stream elements using the provided functions.

To import and use `repeatWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeatWith
```

**Signature**

```ts
export declare const repeatWith: {
  <R2, B, A, C>(
    schedule: Schedule.Schedule<R2, unknown, B>,
    options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C }
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E, C>
  <R, E, R2, B, A, C>(
    self: Stream<R, E, A>,
    schedule: Schedule.Schedule<R2, unknown, B>,
    options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C }
  ): Stream<R | R2, E, C>
}
```
