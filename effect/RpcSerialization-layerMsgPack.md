Package: `@effect/rpc`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerMsgPack

A rpc serialization layer that uses MessagePack for serialization.

MessagePack has a more compact binary format compared to JSON and NDJSON. It
also has better support for binary data.

**Signature**

```ts
declare const layerMsgPack: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcSerialization.ts#L121)

Since v1.0.0