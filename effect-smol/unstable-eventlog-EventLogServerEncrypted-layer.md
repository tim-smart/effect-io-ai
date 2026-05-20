Package: `effect`<br />
Module: `EventLogServerEncrypted`<br />

## EventLogServerEncrypted.layer

Provides an encrypted event-log RPC server using `EventLogRemoteRpcs` and the
encrypted server RPC handlers.

**Signature**

```ts
declare const layer: Layer.Layer<never, never, Storage | RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerEncrypted.ts#L105)

Since v4.0.0