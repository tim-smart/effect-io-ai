Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerMsgPack

A rpc serialization layer that uses MessagePack for serialization.

MessagePack has a more compact binary format compared to JSON and NDJSON. It
also has better support for binary data.

**Signature**

```ts
declare const layerMsgPack: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L494)

Since v4.0.0