Package: `@effect/platform-bun`<br />
Module: `BunClusterHttp`<br />

## BunClusterHttp.layerHttpServer

Layer that provides a Bun HTTP server for cluster runners.

**Signature**

```ts
declare const layerHttpServer: Layer.Layer<BunServices | HttpServer | HttpPlatform | Etag.Generator, ServeError, ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunClusterHttp.ts#L53)

Since v4.0.0