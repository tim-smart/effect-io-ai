# serve

Build an `HttpApp` from an `HttpApi` instance, and serve it using an
`HttpServer`.

Optionally, you can provide a middleware function that will be applied to
the `HttpApp` before serving.

To import and use `serve` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.serve
```

**Signature**

```ts
export declare const serve: <R = never>(
  middleware?: (httpApp: HttpApp.Default) => HttpApp.Default<never, R>
) => Layer.Layer<
  never,
  never,
  | HttpServer.HttpServer
  | HttpRouter.HttpRouter.DefaultServices
  | Exclude<R, Scope | HttpServerRequest.HttpServerRequest>
  | HttpApi.Api
>
```
