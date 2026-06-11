Package: `effect`<br />
Module: `Runners`<br />

## Runners.layerRpc

Layer that provides an RPC-backed `Runners` service using `RpcClientProtocol`,
message storage, sharding configuration, and the default snowflake generator.

**Signature**

```ts
declare const layerRpc: Layer.Layer<Runners, never, MessageStorage.MessageStorage | ShardingConfig | RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runners.ts#L672)

Since v4.0.0