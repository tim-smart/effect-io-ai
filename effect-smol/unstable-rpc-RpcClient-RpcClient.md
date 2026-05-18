Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.RpcClient

The object-shaped client generated from a union of RPC definitions, with one
method per RPC tag.

**Signature**

```ts
type { [K in keyof RpcClient.From<Rpcs, E>]: RpcClient.From<Rpcs, E>[K]; } = Struct.Simplify<RpcClient.From<Rpcs, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L77)

Since v4.0.0