Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.toWebHandler

Builds a Fetch-compatible request handler from an HTTP router application
layer.

The result contains a `handler` function that converts Web `Request` values to
Web `Response` values and a `dispose` function for releasing the layer
resources.

**Signature**

```ts
declare const toWebHandler: <A, E, R extends HttpRouter | Request<"Requires", any> | Request<"GlobalRequires", any> | Request<"Error", any> | Request<"GlobalError", any>, HE, HR = Exclude<Request.Only<"Requires", R>, A> | Exclude<Request.Only<"GlobalRequires", R>, A>>(appLayer: Layer.Layer<A, E, R>, options?: { readonly memoMap?: Layer.MemoMap | undefined; readonly routerConfig?: Partial<FindMyWay.RouterConfig> | undefined; readonly disableLogger?: boolean | undefined; readonly middleware?: (effect: Effect.Effect<HttpServerResponse.HttpServerResponse, Request.Only<"Error", R> | Request.Only<"GlobalError", R> | HttpServerError.HttpServerError, Scope.Scope | HttpServerRequest.HttpServerRequest | Request.Only<"Requires", R> | Request.Only<"GlobalRequires", R>>) => Effect.Effect<HttpServerResponse.HttpServerResponse, HE, HR>; }) => { readonly handler: [HR] extends [never] ? ((request: globalThis.Request, context?: Context.Context<never> | undefined) => Promise<Response>) : ((request: globalThis.Request, context: Context.Context<HR>) => Promise<Response>); readonly dispose: () => Promise<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L1260)

Since v4.0.0