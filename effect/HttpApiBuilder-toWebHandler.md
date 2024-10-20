# toWebHandler

Construct an http web handler from an `HttpApi` instance.

To import and use `toWebHandler` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.toWebHandler
```

**Example**

```ts
import { HttpApi } from "@effect/platform"
import { Etag, HttpApiBuilder, HttpMiddleware, HttpPlatform } from "@effect/platform"
import { NodeContext } from "@effect/platform-node"
import { Layer, ManagedRuntime } from "effect"

const ApiLive = HttpApiBuilder.api(HttpApi.empty)

const runtime = ManagedRuntime.make(
  Layer.mergeAll(ApiLive, HttpApiBuilder.Router.Live, HttpPlatform.layer, Etag.layerWeak).pipe(
    Layer.provideMerge(NodeContext.layer)
  )
)

const handler = HttpApiBuilder.toWebHandler(runtime, HttpMiddleware.logger)
```

**Signature**

```ts
export declare const toWebHandler: <R, ER>(
  runtime: ManagedRuntime<R | HttpApi.HttpApi.Service | Router | HttpRouter.HttpRouter.DefaultServices, ER>,
  middleware?: (
    httpApp: HttpApp.Default
  ) => HttpApp.Default<never, R | HttpApi.HttpApi.Service | Router | HttpRouter.HttpRouter.DefaultServices>
) => (request: Request) => Promise<Response>
```
