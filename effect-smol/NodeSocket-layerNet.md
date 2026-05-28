Package: `@effect/platform-node-shared`<br />
Module: `NodeSocket`<br />

## NodeSocket.layerNet

Provides a `Socket.Socket` by opening a TCP connection with the supplied
Node `net` connection options.

**Signature**

```ts
declare const layerNet: (options: Net.NetConnectOpts) => Layer.Layer<Socket.Socket, Socket.SocketError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L283)

Since v4.0.0