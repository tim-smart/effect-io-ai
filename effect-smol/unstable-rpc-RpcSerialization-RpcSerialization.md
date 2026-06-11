Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.RpcSerialization

Service that describes how RPC protocol messages are encoded and decoded,
including the content type and whether the serialization format provides
message framing.

**When to use**

Use to provide the serialization boundary shared by RPC clients and servers
for a chosen wire format.

**Signature**

```ts
declare class RpcSerialization
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcSerialization.ts#L32)

Since v4.0.0