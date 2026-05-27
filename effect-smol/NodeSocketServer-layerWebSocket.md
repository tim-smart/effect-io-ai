Package: `@effect/platform-node-shared`<br />
Module: `NodeSocketServer`<br />

## NodeSocketServer.layerWebSocket

Provides a WebSocket `SocketServer` backed by the `ws` package and managed
with the supplied server options.

**Signature**

```ts
declare const layerWebSocket: (options: NodeSocket.NodeWS.ServerOptions<typeof NodeSocket.NodeWS.WebSocket, typeof Http.IncomingMessage>) => Layer.Layer<SocketServer.SocketServer, SocketServer.SocketServerError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocketServer.ts#L313)

Since v4.0.0