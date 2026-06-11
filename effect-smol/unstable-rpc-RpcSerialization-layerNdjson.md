Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.layerNdjson

RPC serialization layer that uses NDJSON for serialization.

**When to use**

Use when you have a transport protocol that does not provide message framing.

**See**

- `layerJson` for transports that already provide message framing

**Signature**

```ts
declare const layerNdjson: Layer.Layer<RpcSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L512)

Since v4.0.0