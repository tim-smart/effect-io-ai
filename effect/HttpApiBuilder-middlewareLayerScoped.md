# middlewareLayerScoped

Create an `HttpApi` level middleware `Layer`, that has a `Scope` provided to
the constructor.

To import and use `middlewareLayerScoped` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareLayerScoped
```

**Signature**

```ts
export declare const middlewareLayerScoped: {
  <EX, RX>(
    middleware: Effect.Effect<ApiMiddleware.Fn<never>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, Exclude<RX, Scope>>
  <R, EX, RX>(
    middleware: Effect.Effect<ApiMiddleware.Fn<never, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | Exclude<RX, Scope>>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, EX, RX>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: Effect.Effect<ApiMiddleware.Fn<NoInfer<Error>>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, Exclude<RX, Scope>>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, R, EX, RX>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: Effect.Effect<ApiMiddleware.Fn<NoInfer<Error>, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | Exclude<RX, Scope>>
}
```
