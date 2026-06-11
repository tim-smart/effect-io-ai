Package: `effect`<br />
Module: `EntityProxyServer`<br />

## EntityProxyServer.layerHttpApi

Creates HTTP API handlers for an entity proxy group.

**Details**

Each generated endpoint reads the `entityId` path parameter and forwards the
request payload to the corresponding entity client method, including discard
endpoints.

**Signature**

```ts
declare const layerHttpApi: <ApiId extends string, Groups extends HttpApiGroup.Any, Name extends HttpApiGroup.Name<Groups>, Type extends string, Rpcs extends Rpc.Any>(api: HttpApi.HttpApi<ApiId, Groups>, name: Name, entity: Entity.Entity<Type, Rpcs>) => Layer.Layer<HttpApiGroup.ApiGroup<ApiId, Name>, never, Sharding | Rpc.ServicesServer<Rpcs>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxyServer.ts#L35)

Since v4.0.0