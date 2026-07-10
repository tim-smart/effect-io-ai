Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.ConnectionHooks

Represents optional client protocol hooks that run when a transport connects
and disconnects.

**When to use**

Use to run setup or cleanup effects when an RPC client transport opens or
closes.

**Signature**

```ts
declare class ConnectionHooks
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L1386)

Since v4.0.0