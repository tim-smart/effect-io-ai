Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layerHttpServices

Provides the Node HTTP support services used by `NodeHttpServer`, including
the HTTP platform, ETag generator, and core Node platform services.

**Signature**

```ts
declare const layerHttpServices: Layer.Layer<NodeServices.NodeServices | HttpPlatform.HttpPlatform | Etag.Generator, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L431)

Since v4.0.0