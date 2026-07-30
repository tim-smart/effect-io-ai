Package: `effect`<br />
Module: `Micro`<br />

## Micro.scheduleWithMaxDelay

Transform a `MicroSchedule` to one that will have a delay that will never exceed
the specified maximum.

**Signature**

```ts
declare const scheduleWithMaxDelay: { (max: number): (self: MicroSchedule) => MicroSchedule; (self: MicroSchedule, max: number): MicroSchedule; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2495)

Since v3.4.6