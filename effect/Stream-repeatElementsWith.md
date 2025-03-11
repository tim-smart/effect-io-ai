## repeatElementsWith

Repeats each element of the stream using the provided schedule. When the
schedule is finished, then the output of the schedule will be emitted into
the stream. Repetitions are done in addition to the first execution, which
means using `Schedule.recurs(1)` actually results in the original effect,
plus an additional recurrence, for a total of two repetitions of each value
in the stream.

This function accepts two conversion functions, which allow the output of
this stream and the output of the provided schedule to be unified into a
single type. For example, `Either` or similar data type.

**Signature**

```ts
declare const repeatElementsWith: { <B, R2, A, C>(schedule: Schedule.Schedule<B, unknown, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): <E, R>(self: Stream<A, E, R>) => Stream<C, E, R2 | R>; <A, E, R, B, R2, C>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): Stream<C, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4002)

Since v2.0.0