Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerJson

A rpc serialization layer that uses JSON for serialization.

Use this if your protocol supports framing for messages, otherwise use
`layerNdjson`.

**Signature**

```ts
declare const layerJson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L454)

Since v4.0.0