Package: `@effect/cluster`<br />
Module: `HttpShardManager`<br />

## HttpShardManager.layerNoServerWebsocket

A layer for the `ShardManager` service, that does not run a server.

It only provides the `Runners` rpc client.

You can use this with the `toHttpApp` and `toHttpAppWebsocket` apis
to run a complete `ShardManager` server.

**Signature**

```ts
declare const layerNoServerWebsocket: (options: { readonly runnerPath: string; readonly runnerHttps?: boolean | undefined; }) => Layer.Layer<ShardManager.ShardManager, never, RpcSerialization.RpcSerialization | ShardStorage | RunnerHealth.RunnerHealth | Socket.WebSocketConstructor | ShardManager.Config | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/HttpShardManager.ts#L102)

Since v1.0.0