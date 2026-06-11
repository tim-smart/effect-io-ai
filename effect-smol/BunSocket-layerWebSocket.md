Package: `@effect/platform-bun`<br />
Module: `BunSocket`<br />

## BunSocket.layerWebSocket

Creates a `Socket.Socket` layer for a WebSocket URL using Bun's global
`WebSocket` constructor, honoring protocol, open-timeout, and close-code
error options.

**Signature**

```ts
declare const layerWebSocket: (url: string | Effect<string>, options?: { readonly closeCodeIsError?: ((code: number) => boolean) | undefined; readonly openTimeout?: Duration.Input | undefined; readonly protocols?: string | Array<string> | undefined; } | undefined) => Layer.Layer<Socket.Socket, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunSocket.ts#L43)

Since v4.0.0