Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.makeUpgradeHandler

Creates a Node `upgrade` event handler for an Effect HTTP application,
exposing the upgraded WebSocket as the request's `upgrade` effect and
interrupting the request fiber when the socket closes early.

**Signature**

```ts
declare const makeUpgradeHandler: <R, E, App extends Effect.Effect<HttpServerResponse, any, any> = Effect.Effect<HttpServerResponse, E, R>>(lazyWss: Effect.Effect<NodeWS.WebSocketServer>, httpEffect: Effect.Effect<HttpServerResponse, E, R>, options: { readonly scope: Scope.Scope; readonly middleware?: Middleware.HttpMiddleware.Applied<App, E, R> | undefined; }) => Effect.Effect<(nodeRequest: Http.IncomingMessage, socket: Duplex, head: Buffer) => void, never, Exclude<Effect.Services<App>, HttpServerRequest | Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L230)

Since v4.0.0