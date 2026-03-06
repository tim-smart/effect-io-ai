Package: `effect`<br />
Module: `HttpStaticServer`<br />

## HttpStaticServer.layer

Creates a layer that mounts static files on an `HttpRouter`.

**Example**

```ts
import { Layer } from "effect"
import * as HttpRouter from "effect/unstable/http/HttpRouter"
import * as HttpServerResponse from "effect/unstable/http/HttpServerResponse"
import * as HttpStaticServer from "effect/unstable/http/HttpStaticServer"

const ApiLayer = HttpRouter.add("GET", "/health", HttpServerResponse.text("ok"))

const StaticFilesLayer = HttpStaticServer.layer({
  root: "./public",
  prefix: "/static"
})

const AppLayer = Layer.mergeAll(ApiLayer, StaticFilesLayer)
```

**Signature**

```ts
declare const layer: (options: { readonly root: string; readonly index?: string | undefined; readonly spa?: boolean | undefined; readonly cacheControl?: string | undefined; readonly mimeTypes?: Record<string, string> | undefined; readonly prefix?: string | undefined; }) => Layer.Layer<never, PlatformError, HttpRouter.HttpRouter | FileSystem.FileSystem | Path.Path | HttpPlatform.HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpStaticServer.ts#L191)

Since v4.0.0