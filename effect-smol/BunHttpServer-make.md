Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.make

Creates a scoped Bun `HttpServer` from `Bun.serve` options, stopping the server on scope finalization with optional graceful shutdown settings.

**Signature**

```ts
declare const make: <R extends string>(options: ServeOptions<R> & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Effect.Effect<{ readonly serve: { <E, R>(effect: Effect.Effect<ServerResponse.HttpServerResponse, E, R>): Effect.Effect<void, never, Exclude<R, ServerRequest.HttpServerRequest> | Scope.Scope>; <E, R, App extends Effect.Effect<ServerResponse.HttpServerResponse, any, any>>(effect: Effect.Effect<ServerResponse.HttpServerResponse, E, R>, middleware: HttpMiddleware.Applied<App, E, R>): Effect.Effect<void, never, Exclude<R, ServerRequest.HttpServerRequest> | Scope.Scope>; }; readonly address: Server.Address; }, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L75)

Since v4.0.0