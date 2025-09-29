Package: `@effect/cluster`<br />
Module: `Entity`<br />

## Entity.fromRpcGroup

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided `RpcGroup`.

**Signature**

```ts
declare const fromRpcGroup: <const Type extends string, Rpcs extends Rpc.Any>(type: Type, protocol: RpcGroup.RpcGroup<Rpcs>) => Entity<Type, Rpcs>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Entity.ts#L368)

Since v1.0.0