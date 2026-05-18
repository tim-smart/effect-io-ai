Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layerTest

Provides a test HTTP server listening on an ephemeral port together with a
Fetch-backed `HttpClient` configured for server integration tests.

**Signature**

```ts
declare const layerTest: Layer.Layer<FileSystem.FileSystem | Path.Path | HttpServer.HttpServer | HttpPlatform.HttpPlatform | Etag.Generator | HttpClient, ServeError, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L494)

Since v4.0.0