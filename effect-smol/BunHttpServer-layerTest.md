Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.layerTest

Test layer that starts a Bun HTTP server on an ephemeral port and provides the HTTP test client dependencies.

**Signature**

```ts
declare const layerTest: Layer.Layer<FileSystem.FileSystem | Path.Path | Server.HttpServer | HttpPlatform | Etag.Generator | HttpClient, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L300)

Since v4.0.0