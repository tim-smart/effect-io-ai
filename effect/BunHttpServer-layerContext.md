# layerContext

A Layer providing the `HttpPlatform`, `FileSystem`, `Etag.Generator`, and `Path`
services.

The `FileSystem` service is a no-op implementation, so this layer is only
useful for platforms that have no file system.

To import and use `layerContext` from the "BunHttpServer" module:

ts
import \* as BunHttpServer from "@effect/platform-bun/BunHttpServer"
// Can be accessed like this
BunHttpServer.layerContext
undefined

**Signature**

```ts
export declare const layerContext: Layer.Layer<
  Platform.HttpPlatform | Etag.Generator | BunContext.BunContext,
  never,
  never
>
```
