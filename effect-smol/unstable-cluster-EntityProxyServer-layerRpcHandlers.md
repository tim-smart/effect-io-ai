Package: `effect`<br />
Module: `EntityProxyServer`<br />

## EntityProxyServer.layerRpcHandlers

Creates RPC handlers for the group produced by `EntityProxy.toRpcGroup`.

**Details**

The handlers forward each prefixed proxy RPC to the target entity client using
the `entityId` embedded in the proxy payload.

**Signature**

```ts
declare const layerRpcHandlers: <const Type extends string, Rpcs extends Rpc.Any>(entity: Entity.Entity<Type, Rpcs>) => Layer.Layer<RpcHandlers<Rpcs, Type>, never, Sharding | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxyServer.ts#L102)

Since v4.0.0