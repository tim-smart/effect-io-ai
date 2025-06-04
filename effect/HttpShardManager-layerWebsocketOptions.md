Package: `@effect/cluster`<br />
Module: `HttpShardManager`<br />

## HttpShardManager.layerWebsocketOptions

A WebSocket layer for the `ShardManager` server, that adds a route to the provided
`HttpRouter.Tag`.

By default, it uses the `HttpRouter.Default` tag.

**Signature**

```ts
declare const layerWebsocketOptions: <I = HttpRouter.Default>(options: { readonly path: HttpRouter.PathInput; readonly routerTag?: HttpRouter.HttpRouter.TagClass<I, string, any, any>; readonly runnerPath: string; readonly runnerHttps?: boolean | undefined; readonly logAddress?: boolean | undefined; }) => Layer.Layer<ShardManager.ShardManager, never, RpcSerialization.RpcSerialization | ShardStorage | RunnerHealth.RunnerHealth | HttpServer.HttpServer | Socket.WebSocketConstructor | ShardManager.Config | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpShardManager.ts#L175)

Since v1.0.0