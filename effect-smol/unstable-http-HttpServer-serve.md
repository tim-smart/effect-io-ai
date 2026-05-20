Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.serve

Creates a layer that starts serving an HTTP response effect with the current
`HttpServer`.

**Details**

The request service is supplied by the server for each request; the returned
layer still requires the server, a scope, and any non-request dependencies of
the response effect or middleware.

**Signature**

```ts
declare const serve: { (): <E, R>(effect: Effect.Effect<HttpServerResponse, E, R>) => Layer.Layer<never, never, HttpServer | Exclude<R, HttpServerRequest | Scope.Scope>>; <E, R, App extends Effect.Effect<HttpServerResponse, any, any>>(middleware: Middleware.HttpMiddleware.Applied<App, E, R>): (effect: Effect.Effect<HttpServerResponse, E, R>) => Layer.Layer<never, never, HttpServer | Exclude<Effect.Services<App>, HttpServerRequest | Scope.Scope>>; <E, R>(effect: Effect.Effect<HttpServerResponse, E, R>): Layer.Layer<never, never, HttpServer | Exclude<R, HttpServerRequest | Scope.Scope>>; <E, R, App extends Effect.Effect<HttpServerResponse, any, any>>(effect: Effect.Effect<HttpServerResponse, E, R>, middleware: Middleware.HttpMiddleware.Applied<App, E, R>): Layer.Layer<never, never, HttpServer | Exclude<Effect.Services<App>, HttpServerRequest | Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L133)

Since v4.0.0