Package: `effect`<br />
Module: `EventLogRemote`<br />

## EventLogRemote.layerEncrypted

Provides an encrypted `EventLogRemote` using the remote RPC client and the
default Web Crypto encryption layer.

**Signature**

```ts
declare const layerEncrypted: Layer.Layer<EventLogRemote, EventLogRemoteError, RpcClient.Protocol | Registry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogRemote.ts#L352)

Since v4.0.0