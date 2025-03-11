## Intervals

An `Intervals` represents a list of several `Interval`s.

**Signature**

```ts
export interface Intervals {
  readonly [IntervalsTypeId]: IntervalsTypeId
  readonly intervals: Check.Chunk<Interval.Interval>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScheduleIntervals.ts#L26)

Since v2.0.0