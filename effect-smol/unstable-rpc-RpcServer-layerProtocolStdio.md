Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolStdio

Create a protocol that uses the provided `Stream` and `Sink` for communication.

**Signature**

```ts
declare const layerProtocolStdio: Layer.Layer<Protocol, never, Stdio | RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1218)

Since v4.0.0