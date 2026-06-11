Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.make

Creates an `RpcGroup` from one or more RPC definitions.

**Signature**

```ts
declare const make: <const Rpcs extends ReadonlyArray<Rpc.Any>>(...rpcs: Rpcs) => RpcGroup<Rpcs[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L403)

Since v4.0.0