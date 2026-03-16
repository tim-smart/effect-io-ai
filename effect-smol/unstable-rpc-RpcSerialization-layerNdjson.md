Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerNdjson

A rpc serialization layer that uses NDJSON for serialization.

Use this if your protocol does not support framing for messages, otherwise
use `layerJson`.

**Signature**

```ts
declare const layerNdjson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L465)

Since v4.0.0