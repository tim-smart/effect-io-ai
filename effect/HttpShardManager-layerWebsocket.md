Package: `@effect/cluster`<br />
Module: `HttpShardManager`<br />

## HttpShardManager.layerWebsocket

A Websocket layer for the `ShardManager` server, that adds a route to the provided
`HttpRouter.Tag`.

By default, it uses the `HttpRouter.Default` tag.

**Signature**

```ts
declare const layerWebsocket: Layer.Layer<ShardManager.ShardManager, never, ShardStorage | ShardingConfig | RpcSerialization.RpcSerialization | RunnerHealth.RunnerHealth | ShardManager.Config | Socket.WebSocketConstructor | HttpServer.HttpServer>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/HttpShardManager.ts#L243)

Since v1.0.0