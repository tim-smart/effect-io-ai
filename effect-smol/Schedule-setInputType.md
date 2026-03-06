Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.setInputType

Sets the input type of the provided schedule to a specified type, without
altering the schedule's behavior.

**Signature**

```ts
declare const setInputType: <T>() => <Output, Error, Env>(self: Schedule<Output, T, Error, Env>) => Schedule<Output, T, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3311)

Since v2.0.0