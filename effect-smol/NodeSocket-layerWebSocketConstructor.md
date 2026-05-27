Package: `@effect/platform-node`<br />
Module: `NodeSocket`<br />

## NodeSocket.layerWebSocketConstructor

Provides a `Socket.WebSocketConstructor`, using `globalThis.WebSocket` when
available and falling back to the `ws` package otherwise.

**Signature**

```ts
declare const layerWebSocketConstructor: Layer.Layer<Socket.WebSocketConstructor, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L55)

Since v4.0.0