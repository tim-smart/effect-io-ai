Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerJson

RPC serialization layer that uses JSON for serialization.

**When to use**

Use when you have a transport protocol that already provides message framing.

**See**

- `layerNdjson` for transports that need newline-delimited framing

**Signature**

```ts
declare const layerJson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L498)

Since v4.0.0