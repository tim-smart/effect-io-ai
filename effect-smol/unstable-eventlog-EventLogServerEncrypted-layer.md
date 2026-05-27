Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.layer

Provides an encrypted event-log RPC server using `EventLogRemoteRpcs` and the
encrypted server RPC handlers.

**When to use**

Use to expose the encrypted event-log RPC server when you already have an
`RpcServer.Protocol` and want clients using encrypted `EventLogRemote`
replication to synchronize through server-side `Storage`.

**Details**

This layer installs `EventLogRemoteRpcs` on the provided RPC server protocol
and wires those RPCs to `layerRpcHandlers`. Encrypted entries, session
authentication bindings, remote ids, and change streams are delegated to
`Storage`.

**See**

- `layerRpcHandlers` for the encrypted handler layer without installing an RPC server protocol
- `Storage` for the storage service required by this layer
- `layerStorageMemory` for the process-local in-memory storage layer

**Signature**

```ts
declare const layer: Layer.Layer<never, never, RpcServer.Protocol | Storage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L124)

Since v4.0.0