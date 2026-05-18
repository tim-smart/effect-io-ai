Package: `@effect/platform-bun`<br />
Module: `BunClusterHttp`<br />

## BunClusterHttp.layerHttpServer

Bun HTTP server layer for cluster runners, using `ShardingConfig.runnerListenAddress` or `runnerAddress` as the listen address.

**Signature**

```ts
declare const layerHttpServer: Layer.Layer<BunServices | HttpServer | HttpPlatform | Etag.Generator, ServeError, ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunClusterHttp.ts#L77)

Since v4.0.0