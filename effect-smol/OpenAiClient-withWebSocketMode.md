Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.withWebSocketMode

Uses OpenAI's websocket mode for all responses within the provided effect.

Note: This only works with the following WebSocket constructor layers:

- `NodeSocket.layerWebSocketConstructorWS`
- `BunSocket.layerWebSocketConstructor`

This is because it needs to use non-standard options for setting the
Authorization header.

**Signature**

```ts
declare const withWebSocketMode: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, OpenAiSocket | ResponseIdTracker.ResponseIdTracker> | OpenAiClient | Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L580)

Since v1.0.0