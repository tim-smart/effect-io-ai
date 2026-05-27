Package: `effect`<br />
Module: `DevTools`<br />

## DevTools.layer

Layer that installs the devtools tracer over a WebSocket connection using the
global WebSocket constructor, defaulting to `ws://localhost:34437`.

**When to use**

Use to stream Effect tracing and metrics telemetry to a devtools process when
the runtime environment already provides a global `WebSocket` constructor.

**Details**

This is a convenience wrapper around `layerWebSocket(url)` that provides
`Socket.layerWebSocketConstructorGlobal`, so the resulting layer has no
remaining requirements.

**Gotchas**

This layer only installs the client-side tracer; it does not start a devtools
server, so the configured WebSocket endpoint must already be reachable. It
relies on `globalThis.WebSocket` being available in the runtime.

**See**

- `layerWebSocket` for installing the devtools tracer with an explicit `WebSocketConstructor` requirement
- `layerSocket` for installing the devtools tracer over an existing `Socket` transport

**Signature**

```ts
declare const layer: (url?: string) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevTools.ts#L82)

Since v4.0.0