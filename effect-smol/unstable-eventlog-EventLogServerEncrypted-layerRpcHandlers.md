Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.layerRpcHandlers

Provides RPC handlers for the encrypted event-log server.

Incoming encrypted write payloads are decoded and persisted through `Storage`;
change streams read encrypted entries from storage and encode them for the
remote protocol.

**Signature**

```ts
declare const layerRpcHandlers: Layer.Layer<EventLogAuthentication | Handler<"EventLog.Hello"> | Handler<"EventLog.Authenticate"> | Handler<"EventLog.WriteChunked"> | Handler<"EventLog.WriteSingle"> | Handler<"EventLog.Changes">, never, Storage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L51)

Since v4.0.0