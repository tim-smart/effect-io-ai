Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromSchedule

Creates a Channel from a Schedule.

**Signature**

```ts
declare const fromSchedule: <O, E, R>(schedule: Schedule.Schedule<O, unknown, E, R>) => Channel<O, E, O, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1580)

Since v4.0.0