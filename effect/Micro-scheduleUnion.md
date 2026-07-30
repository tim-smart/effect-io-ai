Package: `effect`<br />
Module: `Micro`<br />

## Micro.scheduleUnion

Combines two `MicroSchedule`s, by recurring if either schedule wants to
recur, using the minimum of the two durations between recurrences.

**Signature**

```ts
declare const scheduleUnion: { (that: MicroSchedule): (self: MicroSchedule) => MicroSchedule; (self: MicroSchedule, that: MicroSchedule): MicroSchedule; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2529)

Since v3.4.6