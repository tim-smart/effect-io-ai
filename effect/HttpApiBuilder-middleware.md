# middleware

Create an `HttpApi` level middleware `Layer`.

To import and use `middleware` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middleware
```

**Signature**

```ts
export declare const middleware: {
  <EX = never, RX = never>(
    middleware: MiddlewareFn<never> | Effect.Effect<MiddlewareFn<never>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, RX>
  <R, EX = never, RX = never>(
    middleware: MiddlewareFn<never, R> | Effect.Effect<MiddlewareFn<never, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | RX>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, EX = never, RX = never>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: MiddlewareFn<NoInfer<Error>> | Effect.Effect<MiddlewareFn<NoInfer<Error>>, EX, RX>,
    options?: { readonly withContext?: false | undefined }
  ): Layer.Layer<never, EX, RX>
  <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, R, EX = never, RX = never>(
    api: HttpApi.HttpApi<Groups, Error, ErrorR>,
    middleware: MiddlewareFn<NoInfer<Error>, R> | Effect.Effect<MiddlewareFn<NoInfer<Error>, R>, EX, RX>,
    options: { readonly withContext: true }
  ): Layer.Layer<never, EX, HttpRouter.HttpRouter.ExcludeProvided<R> | RX>
}
```
