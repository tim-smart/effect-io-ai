Package: `effect`<br />
Module: `Stream`<br />

## Stream.scheduleWith

Schedules the output of the stream using the provided `schedule` and emits
its output at the end (if `schedule` is finite). Uses the provided function
to align the stream and schedule outputs on the same type.

**Signature**

```ts
declare const scheduleWith: { <B, A0 extends A, R2, A, C>(schedule: Schedule.Schedule<B, A0, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): <E, R>(self: Stream<A, E, R>) => Stream<C, E, R2 | R>; <A, E, R, B, A0 extends A, R2, C>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, A0, R2>, options: { readonly onElement: (a: A) => C; readonly onSchedule: (b: B) => C; }): Stream<C, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4579)

Since v2.0.0