Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layer

Builds a full unencrypted event-log RPC server for the supplied schema and
event-group handler layer.

**Signature**

```ts
declare const layer: <Groups extends EventGroup.Any, E, R>(_schema: EventLog.EventLogSchema<Groups>, layer: Layer.Layer<EventGroup.ToService<Groups>, E, R>) => Layer.Layer<never, E, Exclude<R, EventLogServerUnencrypted | EventLog.Registry> | EventLogServerAuthorization | RpcServer.Protocol | Storage | StoreMapping>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L737)

Since v4.0.0