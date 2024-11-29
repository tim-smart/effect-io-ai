# layerContext

A Layer providing the `HttpPlatform`, `FileSystem`, `Etag.Generator`, and `Path`
services.

The `FileSystem` service is a no-op implementation, so this layer is only
useful for platforms that have no file system.

To import and use `layerContext` from the "HttpServer" module:

ts
import \* as HttpServer from "@effect/platform/HttpServer"
// Can be accessed like this
HttpServer.layerContext
undefined

**Signature**

```ts
export declare const layerContext: Layer.Layer<FileSystem | Path | HttpPlatform | Generator, never, never>
```
