Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.serve

Serves the provided application layer as an HTTP server.

**Signature**

```ts
declare const serve: <A, E, R, HE, HR = Request.Only<"Requires", R> | Request.Only<"GlobalRequires", R>>(appLayer: Layer.Layer<A, E, R>, options?: { readonly routerConfig?: Partial<FindMyWay.RouterConfig> | undefined; readonly disableLogger?: boolean | undefined; readonly disableListenLog?: boolean; readonly middleware?: (effect: Effect.Effect<HttpServerResponse.HttpServerResponse, Request.Only<"Error", R> | Request.Only<"GlobalError", R> | HttpServerError.RouteNotFound, Scope.Scope | HttpServerRequest.HttpServerRequest | Request.Only<"Requires", R> | Request.Only<"GlobalRequires", R>>) => Effect.Effect<HttpServerResponse.HttpServerResponse, HE, HR>; }) => Layer.Layer<never, Request.Without<E>, HttpServer.HttpServer | Exclude<Request.Without<R> | Exclude<HR, GlobalProvided>, HttpRouter>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L1057)

Since v1.0.0