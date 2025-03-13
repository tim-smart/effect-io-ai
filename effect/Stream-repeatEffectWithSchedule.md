Package: `effect`<br />
Module: `Stream`<br />

## Stream.repeatEffectWithSchedule

Creates a stream from an effect producing a value of type `A`, which is
repeated using the specified schedule.

**Signature**

```ts
declare const repeatEffectWithSchedule: <A, E, R, X, A0 extends A, R2>(effect: Effect.Effect<A, E, R>, schedule: Schedule.Schedule<X, A0, R2>) => Stream<A, E, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3949)

Since v2.0.0