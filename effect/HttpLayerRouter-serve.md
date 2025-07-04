Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.serve

Serves the provided application layer as an HTTP server.

**Signature**

```ts
declare const serve: <A, E, R, HE, HR = Type.Only<"Requires", R>>(appLayer: Layer.Layer<A, E, R>, options?: { readonly routerConfig?: Partial<FindMyWay.RouterConfig> | undefined; readonly disableLogger?: boolean | undefined; readonly disableListenLog?: boolean; readonly middleware?: (effect: Effect.Effect<HttpServerResponse.HttpServerResponse, Type.Only<"Error", R> | HttpServerError.RouteNotFound, Scope.Scope | HttpServerRequest.HttpServerRequest | Type.Only<"Requires", R>>) => Effect.Effect<HttpServerResponse.HttpServerResponse, HE, HR>; }) => Layer.Layer<never, Type.Without<E>, HttpServer.HttpServer | Exclude<Type.Without<R> | Exclude<HR, Provided>, HttpRouter>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L952)

Since v1.0.0