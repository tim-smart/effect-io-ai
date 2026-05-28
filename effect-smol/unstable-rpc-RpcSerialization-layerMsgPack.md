Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerMsgPack

RPC serialization layer that uses MessagePack for serialization.

**Details**

MessagePack has a more compact binary format compared to JSON and NDJSON. It
also has better support for binary data.

**Signature**

```ts
declare const layerMsgPack: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L572)

Since v4.0.0