# layerContext

A Layer providing the `HttpPlatform`, `FileSystem`, `Etag.Generator`, and `Path`
services.

The `FileSystem` service is a no-op implementation, so this layer is only
useful for platforms that have no file system.

To import and use `layerContext` from the "NodeHttpServer" module:

```ts
import * as NodeHttpServer from "@effect/platform-node/NodeHttpServer"
// Can be accessed like this
NodeHttpServer.layerContext
```

**Signature**

```ts
export declare const layerContext: Layer.Layer<
  Platform.HttpPlatform | Etag.Generator | NodeContext.NodeContext,
  never,
  never
>
```
