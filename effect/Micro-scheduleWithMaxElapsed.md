Package: `effect`<br />
Module: `Micro`<br />

## Micro.scheduleWithMaxElapsed

Transform a `MicroSchedule` to one that will stop repeating after the specified
amount of time.

**Signature**

```ts
declare const scheduleWithMaxElapsed: { (max: number): (self: MicroSchedule) => MicroSchedule; (self: MicroSchedule, max: number): MicroSchedule; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2512)

Since v3.4.6