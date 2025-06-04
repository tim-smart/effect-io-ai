Package: `@effect/cluster`<br />
Module: `HttpShardManager`<br />

## HttpShardManager.layerHttp

A HTTP layer for the `ShardManager` server, that adds a route to the provided
`HttpRouter.Tag`.

By default, it uses the `HttpRouter.Default` tag.

**Signature**

```ts
declare const layerHttp: Layer.Layer<ShardManager.ShardManager, never, ShardStorage | ShardingConfig | RpcSerialization.RpcSerialization | RunnerHealth.RunnerHealth | ShardManager.Config | HttpClient.HttpClient | HttpServer.HttpServer>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpShardManager.ts#L222)

Since v1.0.0