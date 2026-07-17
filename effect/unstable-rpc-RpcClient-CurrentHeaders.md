Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.CurrentHeaders

Fiber reference containing headers that are merged into outgoing RPC
client requests.

**When to use**

Use to set request headers that should be automatically merged into outgoing
RPC client messages.

**Signature**

```ts
declare const CurrentHeaders: Context.Reference<Headers.Headers>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcClient.ts#L812)

Since v4.0.0