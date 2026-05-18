Package: `@effect/platform-node`<br />
Module: `NodeClusterHttp`<br />

## NodeClusterHttp.layerHttpServer

Provides the HTTP server and Node HTTP services used by cluster runners,
listening on `ShardingConfig.runnerListenAddress` or `runnerAddress`.

**Signature**

```ts
declare const layerHttpServer: Layer.Layer<NodeServices | HttpServer | HttpPlatform | Etag.Generator, ServeError, ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterHttp.ts#L163)

Since v4.0.0