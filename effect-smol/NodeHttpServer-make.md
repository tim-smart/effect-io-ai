Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.make

Creates a scoped `HttpServer` from a Node `http.Server`, starts listening
with the supplied options, registers request and upgrade handling, and closes
the server during scope finalization with optional graceful-shutdown control.

**Signature**

```ts
declare const make: (evaluate: LazyArg<Http.Server<typeof Http.IncomingMessage, typeof Http.ServerResponse>>, options: Net.ListenOptions & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Effect.Effect<{ readonly serve: { <E, R>(effect: Effect.Effect<HttpServerResponse, E, R>): Effect.Effect<void, never, Exclude<R, HttpServerRequest> | Scope.Scope>; <E, R, App extends Effect.Effect<HttpServerResponse, any, any>>(effect: Effect.Effect<HttpServerResponse, E, R>, middleware: Middleware.HttpMiddleware.Applied<App, E, R>): Effect.Effect<void, never, Exclude<R, HttpServerRequest> | Scope.Scope>; }; readonly address: HttpServer.Address; }, ServeError, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L91)

Since v4.0.0