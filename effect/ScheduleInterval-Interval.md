## Interval

An `Interval` represents an interval of time. Intervals can encompass all
time, or no time at all.

**Signature**

```ts
export interface Interval {
  readonly [IntervalTypeId]: IntervalTypeId
  readonly startMillis: number
  readonly endMillis: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScheduleInterval.ts#L27)

Since v2.0.0