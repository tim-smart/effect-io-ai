## delayedSchedule

Uses the delays produced by a schedule to further delay its intervals.

**Details**

This function modifies a schedule by using its own output delays to control
its execution timing. Instead of executing immediately at each interval, the
schedule will be delayed by the duration it produces.

**Signature**

```ts
declare const delayedSchedule: <In, R>(schedule: Schedule<Duration.Duration, In, R>) => Schedule<Duration.Duration, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L806)

Since v2.0.0