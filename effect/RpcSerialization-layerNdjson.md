Package: `@effect/rpc`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerNdjson

A rpc serialization layer that uses NDJSON for serialization.

Use this if your protocol does not support framing for messages, otherwise
use `layerJson`.

**Signature**

```ts
declare const layerNdjson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcSerialization.ts#L373)

Since v1.0.0