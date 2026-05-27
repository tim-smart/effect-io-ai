Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolStdio

Provides a server `Protocol` that reads RPC messages from `Stdio.stdin` and
writes encoded responses to `Stdio.stdout`.

**Signature**

```ts
declare const layerProtocolStdio: Layer.Layer<Protocol, never, Stdio | RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1336)

Since v4.0.0