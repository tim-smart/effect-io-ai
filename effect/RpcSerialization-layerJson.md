Package: `@effect/rpc`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerJson

A rpc serialization layer that uses JSON for serialization.

Use this if your protocol supports framing for messages, otherwise use
`layerNdjson`.

**Signature**

```ts
declare const layerJson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcSerialization.ts#L362)

Since v1.0.0