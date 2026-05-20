Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerClientProtocolWebsocket

Provides a runner RPC client protocol that connects to runner addresses over
WebSocket.

**Details**

The configured path is appended to each runner address, and `https` switches
the generated URL from `ws` to `wss`.

**Signature**

```ts
declare const layerClientProtocolWebsocket: (options: { readonly path: string; readonly https?: boolean | undefined; }) => Layer.Layer<RpcClientProtocol, never, RpcSerialization.RpcSerialization | Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L110)

Since v4.0.0