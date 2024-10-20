# middlewareLayer

Create an `HttpApi` level middleware `Layer`.

To import and use `middlewareLayer` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareLayer
```

**Signature**

```ts
export declare const middlewareLayer: {
  <EX = never, RX = never>(
    middleware: ApiMiddleware.Fn<never> | Effect.Effect<ApiMiddleware.Fn<never>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, RX>
  <R, EX = never, RX = never>(
    middleware: ApiMiddleware.Fn<never, R> | Effect.Effect<ApiMiddleware.Fn<never, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | RX>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, EX = never, RX = never>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: ApiMiddleware.Fn<NoInfer<Error>> | Effect.Effect<ApiMiddleware.Fn<NoInfer<Error>>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, RX>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, R, EX = never, RX = never>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: ApiMiddleware.Fn<NoInfer<Error>, R> | Effect.Effect<ApiMiddleware.Fn<NoInfer<Error>, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | RX>
}
```
