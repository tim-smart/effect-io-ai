Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.json

JSON RPC serialization for whole message payloads. It does not include
message framing, so it is intended for transports that frame responses
themselves.

**Signature**

```ts
declare const json: { makeUnsafe(): Parser; readonly contentType: string; readonly includesFraming: boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L69)

Since v4.0.0