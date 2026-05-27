Package: `@effect/platform-node-shared`<br />
Module: `NodeSocketServer`<br />

## NodeSocketServer.layer

Provides a TCP `SocketServer` by creating and managing a scoped Node
`net.Server` with the supplied server and listen options.

**Signature**

```ts
declare const layer: (options: Net.ServerOpts & Net.ListenOptions) => Layer.Layer<SocketServer.SocketServer, SocketServer.SocketServerError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocketServer.ts#L195)

Since v4.0.0