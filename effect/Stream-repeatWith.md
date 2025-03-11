## repeatWith

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.
The schedule output will be emitted at the end of each repetition and can
be unified with the stream elements using the provided functions.

**Signature**

```ts
declare const repeatWith: { <B, R2, A, C>(schedule: Schedule.Schedule<B, unknown, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): <E, R>(self: Stream<A, E, R>) => Stream<C, E, R2 | R>; <A, E, R, B, R2, C>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): Stream<C, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4041)

Since v2.0.0