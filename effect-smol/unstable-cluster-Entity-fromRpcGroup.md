Package: `effect`<br />
Module: `Entity`<br />

## Entity.fromRpcGroup

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided `RpcGroup`.

**Signature**

```ts
declare const fromRpcGroup: <const Type extends string, Rpcs extends Rpc.Any>(type: Type, protocol: RpcGroup.RpcGroup<Rpcs>) => Entity<Type, Rpcs>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L357)

Since v4.0.0