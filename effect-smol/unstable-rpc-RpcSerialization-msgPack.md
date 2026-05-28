Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.msgPack

Default MessagePack RPC serialization using record support and built-in
message framing.

**Signature**

```ts
declare const msgPack: { makeUnsafe(): Parser; readonly contentType: string; readonly includesFraming: boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L510)

Since v4.0.0