Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.toHttpEffect

Builds an application layer with a router and returns the router as an HTTP
handler effect.

**Details**

The returned effect handles the current `HttpServerRequest` in the current
`Scope`; route request markers are converted into the ordinary requirements of
the returned handler.

**Signature**

```ts
declare const toHttpEffect: <A, E, R>(appLayer: Layer.Layer<A, E, R>) => Effect.Effect<Effect.Effect<HttpServerResponse.HttpServerResponse, Request.Only<"Error", R> | Request.Only<"GlobalRequires", R> | HttpServerError.HttpServerError, Scope.Scope | HttpServerRequest.HttpServerRequest | Request.Only<"Requires", R> | Request.Only<"GlobalRequires", R>>, Request.Without<E>, Exclude<Request.Without<R>, HttpRouter> | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpRouter.ts#L563)

Since v4.0.0