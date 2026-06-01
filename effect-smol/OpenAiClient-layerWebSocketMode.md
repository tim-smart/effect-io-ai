Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.layerWebSocketMode

Uses OpenAI's websocket mode for all responses that use the Layer.

**When to use**

Use to provide WebSocket mode through layer composition for effects that use
OpenAI response streaming.

**Gotchas**

This only works with the following WebSocket constructor layers:

- `NodeSocket.layerWebSocketConstructorWS`
- `BunSocket.layerWebSocketConstructor`

These constructor layers support the non-standard options needed to set the
Authorization header.

**See**

- `withWebSocketMode` for enabling WebSocket mode around a single effect

**Signature**

```ts
declare const layerWebSocketMode: Layer.Layer<OpenAiSocket | ResponseIdTracker.ResponseIdTracker, never, OpenAiClient | Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L752)

Since v4.0.0