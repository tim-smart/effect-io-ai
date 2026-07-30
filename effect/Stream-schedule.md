Package: `effect`<br />
Module: `Stream`<br />

## Stream.schedule

Schedules the output of the stream using the provided `schedule`.

**Signature**

```ts
declare const schedule: { <X, A0 extends A, R2, A>(schedule: Schedule.Schedule<X, A0, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, A0 extends A, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<X, A0, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4576)

Since v2.0.0