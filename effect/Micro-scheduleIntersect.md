## scheduleIntersect

Combines two `MicroSchedule`s, by recurring only if both schedules want to
recur, using the maximum of the two durations between recurrences.

**Signature**

```ts
declare const scheduleIntersect: { (that: MicroSchedule): (self: MicroSchedule) => MicroSchedule; (self: MicroSchedule, that: MicroSchedule): MicroSchedule; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2546)

Since v3.4.6