Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.CurrentHeaders

A fiber-local reference containing headers that are merged into outgoing RPC
client requests.

**Signature**

```ts
declare const CurrentHeaders: Context.Reference<Headers.Headers>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L824)

Since v4.0.0