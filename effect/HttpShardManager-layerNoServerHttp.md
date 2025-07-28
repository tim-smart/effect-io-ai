Package: `@effect/cluster`<br />
Module: `HttpShardManager`<br />

## HttpShardManager.layerNoServerHttp

A layer for the `ShardManager` service, that does not run a server.

It only provides the `Runners` rpc client.

You can use this with the `toHttpApp` and `toHttpAppWebsocket` apis
to run a complete `ShardManager` server.

**Signature**

```ts
declare const layerNoServerHttp: (options: { readonly runnerPath: string; readonly runnerHttps?: boolean | undefined; }) => Layer.Layer<ShardManager.ShardManager, never, RpcSerialization.RpcSerialization | ShardStorage | RunnerHealth.RunnerHealth | HttpClient.HttpClient | ShardManager.Config | ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/HttpShardManager.ts#L64)

Since v1.0.0