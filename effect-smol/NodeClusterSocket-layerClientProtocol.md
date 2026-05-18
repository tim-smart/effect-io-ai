Package: `@effect/platform-node-shared`<br />
Module: `NodeClusterSocket`<br />

## NodeClusterSocket.layerClientProtocol

Provides the cluster `RpcClientProtocol` by opening TCP sockets to runner
addresses and using the current RPC serialization service.

**Signature**

```ts
declare const layerClientProtocol: Layer.Layer<Runners.RpcClientProtocol, never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterSocket.ts#L41)

Since v4.0.0