Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layerNoRpcServer

Builds the unencrypted event-log server handlers without installing an
`RpcServer.Protocol` implementation.

**Signature**

```ts
declare const layerNoRpcServer: <Groups extends EventGroup.Any, E, R>(_schema: EventLog.EventLogSchema<Groups>, layer: Layer.Layer<EventGroup.ToService<Groups>, E, R>) => Layer.Layer<Rpc.ToHandler<RpcGroup.Rpcs<typeof EventLogRemoteRpcs>> | EventLogAuthentication, E, Exclude<R, EventLogServerUnencrypted | EventLog.Registry> | EventLogServerAuthorization | Storage | StoreMapping>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L754)

Since v4.0.0