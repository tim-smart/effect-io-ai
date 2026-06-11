Package: `@effect/platform-node`<br />
Module: `NodeSocket`<br />

## NodeSocket.layerWebSocket

Creates a `Socket.Socket` layer for a WebSocket URL using the Node WebSocket
constructor layer, honoring protocol, open-timeout, and close-code error
options.

**Signature**

```ts
declare const layerWebSocket: (url: string | Effect.Effect<string>, options?: { readonly closeCodeIsError?: ((code: number) => boolean) | undefined; readonly openTimeout?: Duration.Input | undefined; readonly protocols?: string | Array<string> | undefined; } | undefined) => Layer.Layer<Socket.Socket, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L61)

Since v4.0.0