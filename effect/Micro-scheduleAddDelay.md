## scheduleAddDelay

Returns a new `MicroSchedule` with an added calculated delay to each delay
returned by this schedule.

**Signature**

```ts
declare const scheduleAddDelay: { (f: () => number): (self: MicroSchedule) => MicroSchedule; (self: MicroSchedule, f: () => number): MicroSchedule; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2478)

Since v3.4.6