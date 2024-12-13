# middlewareScoped

Create an `HttpApi` level middleware `Layer`, that has a `Scope` provided to
the constructor.

To import and use `middlewareScoped` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareScoped
```

**Signature**

```ts
export declare const middlewareScoped: {
  <EX, RX>(
    middleware: Effect.Effect<MiddlewareFn<never>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, Exclude<RX, Scope>>
  <R, EX, RX>(
    middleware: Effect.Effect<MiddlewareFn<never, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | Exclude<RX, Scope>>
  <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, EX, RX>(
    api: HttpApi.HttpApi<ApiId, Groups, Error, ErrorR>,
    middleware: Effect.Effect<MiddlewareFn<NoInfer<Error>>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, Exclude<RX, Scope>>
  <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, R, EX, RX>(
    api: HttpApi.HttpApi<ApiId, Groups, Error, ErrorR>,
    middleware: Effect.Effect<MiddlewareFn<NoInfer<Error>, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | Exclude<RX, Scope>>
}
```
