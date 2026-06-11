Package: `@effect/platform-browser`<br />
Module: `BrowserSocket`<br />

## BrowserSocket.layerWebSocket

Creates a `Socket` layer connected to the given URL using the browser `WebSocket` constructor.

**When to use**

Use when you need browser code to satisfy the platform socket service from a
URL without wiring the browser constructor service separately.

**Details**

Delegates socket construction to `Socket.makeWebSocket` and provides the
browser-backed `WebSocketConstructor` service.

**Gotchas**

Browser WebSocket rules still control URL schemes, mixed-content blocking,
cookies, authentication, origin checks, subprotocols, and extensions. Close
events are errors unless `closeCodeIsError` classifies the close code as
clean.

**See**

- `layerWebSocketConstructor` for providing only the browser constructor service

**Signature**

```ts
declare const layerWebSocket: (url: string, options?: { readonly closeCodeIsError?: (code: number) => boolean; }) => Layer.Layer<Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserSocket.ts#L38)

Since v4.0.0