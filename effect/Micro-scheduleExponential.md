Package: `effect`<br />
Module: `Micro`<br />

## Micro.scheduleExponential

Create a `MicroSchedule` that will generate a delay with an exponential backoff.

**Signature**

```ts
declare const scheduleExponential: (baseMillis: number, factor?: number) => MicroSchedule
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2467)

Since v3.4.6