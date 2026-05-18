Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.schema

Creates an `EventLogSchema` from one or more event groups.

**Signature**

```ts
declare const schema: <Groups extends ReadonlyArray<EventGroup.Any>>(...groups: Groups) => EventLogSchema<Groups[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L231)

Since v4.0.0