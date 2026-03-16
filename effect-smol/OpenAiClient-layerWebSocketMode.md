Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.layerWebSocketMode

Uses OpenAI's websocket mode for all responses that use the Layer.

Note: This only works with the following WebSocket constructor layers:

- `NodeSocket.layerWebSocketConstructorWS`
- `BunSocket.layerWebSocketConstructor`

This is because it needs to use non-standard options for setting the
Authorization header.

**Signature**

```ts
declare const layerWebSocketMode: Layer.Layer<OpenAiSocket | ResponseIdTracker.ResponseIdTracker, never, OpenAiClient | Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L539)

Since v1.0.0