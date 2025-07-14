Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.toWebHandler

Construct an http web handler from an `HttpApi` instance.

**Example**

```ts
import { HttpApi, HttpApiBuilder, HttpServer } from "@effect/platform"
import { Layer } from "effect"

class MyApi extends HttpApi.make("api") {}

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
declare const toWebHandler: <LA, LE>(layer: Layer.Layer<LA | HttpApi.Api | HttpRouter.HttpRouter.DefaultServices, LE>, options?: { readonly middleware?: (httpApp: HttpApp.Default) => HttpApp.Default<never, HttpApi.Api | Router | HttpRouter.HttpRouter.DefaultServices>; readonly memoMap?: Layer.MemoMap; }) => { readonly handler: (request: Request, context?: Context.Context<never> | undefined) => Promise<Response>; readonly dispose: () => Promise<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L181)

Since v1.0.0