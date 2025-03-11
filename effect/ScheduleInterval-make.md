## make

Constructs a new interval from the two specified endpoints. If the start
endpoint greater than the end endpoint, then a zero size interval will be
returned.

**Signature**

```ts
declare const make: (startMillis: number, endMillis: number) => Interval
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScheduleInterval.ts#L41)

Since v2.0.0