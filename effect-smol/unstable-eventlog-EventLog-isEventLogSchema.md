Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.isEventLogSchema

Returns `true` when a value carries the `EventLogSchema` marker.

**Signature**

```ts
declare const isEventLogSchema: (u: unknown) => u is EventLogSchema<EventGroup.Any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L215)

Since v4.0.0