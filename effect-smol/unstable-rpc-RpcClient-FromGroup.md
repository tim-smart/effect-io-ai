Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.FromGroup

Derives the object-shaped RPC client type for all RPCs contained in an
`RpcGroup`.

**Signature**

```ts
type { [K in keyof RpcClient.From<RpcGroup.Rpcs<Group>, E>]: RpcClient.From<RpcGroup.Rpcs<Group>, E>[K]; } = RpcClient<RpcGroup.Rpcs<Group>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L223)

Since v4.0.0