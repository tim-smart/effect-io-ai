# toWebHandler

Construct an http web handler from an `HttpApi` instance.

To import and use `toWebHandler` from the "HttpApiBuilder" module:

ts
import \* as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.toWebHandler
undefined

**Example**

```ts
import { HttpApi, HttpApiBuilder, HttpServer } from "@effect/platform"
import { Layer } from "effect"

class MyApi extends HttpApi.empty {}

const MyApiLive = HttpApiBuilder.api(MyApi)

const { dispose, handler } = HttpApiBuilder.toWebHandler(
  Layer.mergeAll(
    MyApiLive,
    // you could also use NodeHttpServer.layerContext, depending on your
    // server's platform
    HttpServer.layerContext
  )
)
```

**Signature**

```ts
export declare const toWebHandler: <LA, LE>(
  layer: Layer.Layer<LA | HttpApi.Api | HttpRouter.HttpRouter.DefaultServices, LE>,
  options?: {
    readonly middleware?: (
      httpApp: HttpApp.Default
    ) => HttpApp.Default<never, HttpApi.Api | Router | HttpRouter.HttpRouter.DefaultServices>
    readonly memoMap?: Layer.MemoMap
  }
) => { readonly handler: (request: Request) => Promise<Response>; readonly dispose: () => Promise<void> }
```
