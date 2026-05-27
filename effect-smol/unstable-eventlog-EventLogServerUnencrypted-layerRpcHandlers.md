Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layerRpcHandlers

Provides RPC handlers for the unencrypted event-log server.

**Details**

Incoming plaintext entries are authorized, mapped to a server store, checked
for conflicts, run through registered handlers, and persisted; change streams
include compacted backlog entries when compactors are registered.

**Signature**

```ts
declare const layerRpcHandlers: Layer.Layer<EventLogAuthentication | Rpc.Handler<"EventLog.Hello"> | Rpc.Handler<"EventLog.Authenticate"> | Rpc.Handler<"EventLog.WriteChunked"> | Rpc.Handler<"EventLog.WriteSingle"> | Rpc.Handler<"EventLog.Changes">, never, Storage | StoreMapping | EventLog.Registry | EventLogServerAuthorization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L133)

Since v4.0.0