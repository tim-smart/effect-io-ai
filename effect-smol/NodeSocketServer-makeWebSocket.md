Package: `@effect/platform-node-shared`<br />
Module: `NodeSocketServer`<br />

## NodeSocketServer.makeWebSocket

Creates a scoped WebSocket `SocketServer` backed by the `ws` package,
providing the WebSocket and its Node `IncomingMessage` to connection
handlers and closing the server when the scope ends.

**Signature**

```ts
declare const makeWebSocket: (options: NodeWS.ServerOptions<typeof NodeWS.WebSocket, typeof Http.IncomingMessage>) => Effect.Effect<SocketServer.SocketServer["Service"], SocketServer.SocketServerError, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocketServer.ts#L210)

Since v4.0.0