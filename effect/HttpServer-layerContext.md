## layerContext

A Layer providing the `HttpPlatform`, `FileSystem`, `Etag.Generator`, and `Path`
services.

The `FileSystem` service is a no-op implementation, so this layer is only
useful for platforms that have no file system.

**Signature**

```ts
declare const layerContext: Layer.Layer<FileSystem | Path | HttpPlatform | Generator, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpServer.ts#L221)

Since v1.0.0