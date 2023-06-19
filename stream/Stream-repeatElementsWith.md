# repeatElementsWith

Repeats each element of the stream using the provided schedule. When the
schedule is finished, then the output of the schedule will be emitted into
the stream. Repetitions are done in addition to the first execution, which
means using `Schedule.recurs(1)` actually results in the original effect,
plus an additional recurrence, for a total of two repetitions of each value
in the stream.

This function accepts two conversion functions, which allow the output of
this stream and the output of the provided schedule to be unified into a
single type. For example, `Either` or similar data type.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const repeatElementsWith: {
  <R2, B, A, C>(schedule: Schedule.Schedule<R2, unknown, B>, f: (a: A) => C, g: (b: B) => C): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E, C>
  <R, E, R2, B, A, C>(
    self: Stream<R, E, A>,
    schedule: Schedule.Schedule<R2, unknown, B>,
    f: (a: A) => C,
    g: (b: B) => C
  ): Stream<R | R2, E, C>
}
```
