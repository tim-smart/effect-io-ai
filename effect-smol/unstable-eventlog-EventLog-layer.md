Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.layer

Combines event-group handler layers with the `EventLog` runtime for a schema.

**Signature**

```ts
declare const layer: <Groups extends EventGroup.Any, E, R>(_schema: EventLogSchema<Groups>, layer: Layer.Layer<EventGroup.ToService<Groups>, E, R>) => Layer.Layer<EventLog | Registry, E, Exclude<R, EventLog | Registry> | EventJournal | Identity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLog.ts#L948)

Since v4.0.0