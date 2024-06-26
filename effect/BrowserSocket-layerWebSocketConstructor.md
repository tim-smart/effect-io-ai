# layerWebSocketConstructor

A WebSocket constructor that uses globalThis.WebSocket.

To import and use `layerWebSocketConstructor` from the "BrowserSocket" module:

```ts
import * as BrowserSocket from "@effect/platform-browser/BrowserSocket"
// Can be accessed like this
BrowserSocket.layerWebSocketConstructor
```

**Signature**

```ts
export declare const layerWebSocketConstructor: Layer.Layer<Socket.WebSocketConstructor, never, never>
```
