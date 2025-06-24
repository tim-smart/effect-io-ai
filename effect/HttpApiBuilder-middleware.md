Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.middleware

Create an `HttpApi` level middleware `Layer`.

**Signature**

```ts
declare const middleware: { <EX = never, RX = never>(middleware: MiddlewareFn<never> | Effect.Effect<MiddlewareFn<never>, EX, RX>, options?: { readonly withContext?: false | undefined; }): Layer.Layer<never, EX, Exclude<RX, Scope>>; <R, EX = never, RX = never>(middleware: MiddlewareFn<never, R> | Effect.Effect<MiddlewareFn<never, R>, EX, RX>, options: { readonly withContext: true; }): Layer.Layer<never, EX, Exclude<HttpRouter.HttpRouter.ExcludeProvided<R> | RX, Scope>>; <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, EX = never, RX = never>(api: HttpApi.HttpApi<ApiId, Groups, Error, ErrorR>, middleware: MiddlewareFn<NoInfer<Error>> | Effect.Effect<MiddlewareFn<NoInfer<Error>>, EX, RX>, options?: { readonly withContext?: false | undefined; }): Layer.Layer<never, EX, Exclude<RX, Scope>>; <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR, R, EX = never, RX = never>(api: HttpApi.HttpApi<ApiId, Groups, Error, ErrorR>, middleware: MiddlewareFn<NoInfer<Error>, R> | Effect.Effect<MiddlewareFn<NoInfer<Error>, R>, EX, RX>, options: { readonly withContext: true; }): Layer.Layer<never, EX, Exclude<HttpRouter.HttpRouter.ExcludeProvided<R> | RX, Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L893)

Since v1.0.0