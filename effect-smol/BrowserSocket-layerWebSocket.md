Package: `@effect/platform-browser`<br />
Module: `BrowserSocket`<br />

## BrowserSocket.layerWebSocket

Creates a `Socket` layer connected to the given URL using the browser `WebSocket` constructor.

**Signature**

```ts
declare const layerWebSocket: (url: string, options?: { readonly closeCodeIsError?: (code: number) => boolean; }) => Layer.Layer<Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserSocket.ts#L36)

Since v4.0.0