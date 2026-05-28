Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.ndjson

Serializes RPC protocol messages as newline-delimited JSON, framing each message
with a trailing newline.

**Signature**

```ts
declare const ndjson: { makeUnsafe(): Parser; readonly contentType: string; readonly includesFraming: boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L106)

Since v4.0.0