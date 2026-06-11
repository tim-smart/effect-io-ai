Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.makeHandler

Creates a Node `request` event handler for an Effect HTTP application,
injecting a `HttpServerRequest` and interrupting the request fiber if the
client closes the response before it finishes.

**Signature**

```ts
declare const makeHandler: <R, E, App extends Effect.Effect<HttpServerResponse, any, any> = Effect.Effect<HttpServerResponse, E, R>>(httpEffect: Effect.Effect<HttpServerResponse, E, R>, options: { readonly scope: Scope.Scope; readonly middleware?: Middleware.HttpMiddleware.Applied<App, E, R> | undefined; }) => Effect.Effect<(nodeRequest: Http.IncomingMessage, nodeResponse: Http.ServerResponse) => void, never, Exclude<Effect.Services<App>, HttpServerRequest | Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L170)

Since v4.0.0