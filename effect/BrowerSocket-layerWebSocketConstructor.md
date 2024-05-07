# layerWebSocketConstructor

A WebSocket constructor that uses globalThis.WebSocket.

To import and use `layerWebSocketConstructor` from the "BrowerSocket" module:

```ts
import * as BrowerSocket from "@effect/platform-browser/BrowerSocket"
// Can be accessed like this
BrowerSocket.layerWebSocketConstructor
```

**Signature**

```ts
export declare const layerWebSocketConstructor: Layer.Layer<Socket.WebSocketConstructor, never, never>
```
