Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layer

Builds a full unencrypted event-log RPC server for the supplied schema and
event-group handler layer.

**When to use**

Use when you need a complete unencrypted event-log RPC endpoint for a trusted
deployment, local development, tests, or a server-side event source, and you
can provide storage, store mapping, authorization, an RPC protocol, and the
event-group handler layer.

**Details**

The layer installs `EventLogRemoteRpcs`, wires `layerRpcHandlers`, registers
the supplied event-group handler layer, and provides `layerServer`, leaving
only the required infrastructure services in the environment.

**Gotchas**

Entries are persisted and streamed in plaintext. Protect the backing
`Storage` with the surrounding infrastructure, and use durable storage that
preserves session authentication bindings when the server must survive
restarts.

**See**

- `layerNoRpcServer` for installing the same unencrypted handlers when an `RpcServer.Protocol` is provided elsewhere
- `layerRpcHandlers` for wiring the unencrypted RPC handlers directly
- `layerServer` for constructing the server service and event-log registry without RPC handlers

**Signature**

```ts
declare const layer: <Groups extends EventGroup.Any, E, R>(_schema: EventLog.EventLogSchema<Groups>, layer: Layer.Layer<EventGroup.ToService<Groups>, E, R>) => Layer.Layer<never, E, Exclude<R, EventLogServerUnencrypted | EventLog.Registry> | EventLogServerAuthorization | RpcServer.Protocol | Storage | StoreMapping>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L834)

Since v4.0.0