Package: `effect`<br />
Module: `DevTools`<br />

## DevTools.layerWebSocket

Layer that installs the devtools tracer over a WebSocket connection to the
specified URL, defaulting to `ws://localhost:34437`.

**Signature**

```ts
declare const layerWebSocket: (url?: string) => Layer.Layer<never, never, Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DevTools.ts#L31)

Since v4.0.0