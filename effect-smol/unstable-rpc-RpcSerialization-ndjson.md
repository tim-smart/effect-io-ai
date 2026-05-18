Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.ndjson

Newline-delimited JSON RPC serialization that frames each protocol message
with a trailing newline.

**Signature**

```ts
declare const ndjson: { makeUnsafe(): Parser; readonly contentType: string; readonly includesFraming: boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L91)

Since v4.0.0