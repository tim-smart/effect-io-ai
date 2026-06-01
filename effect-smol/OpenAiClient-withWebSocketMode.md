Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.withWebSocketMode

Uses OpenAI's WebSocket mode for response streams within the provided effect.

**When to use**

Use to enable WebSocket mode around one effect that creates OpenAI response
streams.

**Gotchas**

This only works with the following WebSocket constructor layers:

- `NodeSocket.layerWebSocketConstructorWS`
- `BunSocket.layerWebSocketConstructor`

These constructor layers support the non-standard options needed to set the
Authorization header.

**See**

- `layerWebSocketMode` for providing WebSocket mode through a layer
- `OpenAiSocket` for direct access to the WebSocket-backed streaming service

**Signature**

```ts
declare const withWebSocketMode: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, OpenAiSocket | ResponseIdTracker.ResponseIdTracker> | OpenAiClient | Socket.WebSocketConstructor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L715)

Since v4.0.0