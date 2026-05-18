Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.serveEffect

Effect that starts serving an HTTP response effect with the current
`HttpServer`.

The request service is supplied by the server for each request; the effect
requires a scope and any non-request dependencies of the response effect or
middleware.

**Signature**

```ts
declare const serveEffect: { (): <E, R>(effect: Effect.Effect<HttpServerResponse, E, R>) => Effect.Effect<void, never, Scope.Scope | HttpServer | Exclude<R, HttpServerRequest>>; <E, R, App extends Effect.Effect<HttpServerResponse, any, any>>(middleware: Middleware.HttpMiddleware.Applied<App, E, R>): (effect: Effect.Effect<HttpServerResponse, E, R>) => Effect.Effect<void, never, Scope.Scope | HttpServer | Exclude<Effect.Services<App>, HttpServerRequest>>; <E, R>(effect: Effect.Effect<HttpServerResponse, E, R>): Effect.Effect<void, never, Scope.Scope | HttpServer | Exclude<R, HttpServerRequest>>; <E, R, App extends Effect.Effect<HttpServerResponse, any, any>>(effect: Effect.Effect<HttpServerResponse, E, R>, middleware: Middleware.HttpMiddleware.Applied<App, E, R>): Effect.Effect<void, never, Scope.Scope | HttpServer | Exclude<Effect.Services<App>, HttpServerRequest>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L174)

Since v4.0.0