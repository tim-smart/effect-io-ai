Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.serve

Build an `HttpApp` from an `HttpApi` instance, and serve it using an
`HttpServer`.

Optionally, you can provide a middleware function that will be applied to
the `HttpApp` before serving.

**Signature**

```ts
declare const serve: <R = never>(middleware?: (httpApp: HttpApp.Default) => HttpApp.Default<never, R>) => Layer.Layer<never, never, HttpServer.HttpServer | HttpRouter.HttpRouter.DefaultServices | Exclude<R, Scope | HttpServerRequest.HttpServerRequest> | HttpApi.Api>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L81)

Since v1.0.0