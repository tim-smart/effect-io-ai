Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.OpenAiSocket

Service for creating OpenAI response streams over a WebSocket connection.

**When to use**

Use when code needs direct access to the WebSocket-backed response streaming
service rather than wrapping an effect with WebSocket mode.

**Details**

`createResponseStream` sends a `response.create` message over the WebSocket
connection and returns an HTTP response together with a stream of
`ResponseStreamEvent` values.

**Gotchas**

WebSocket response streams are serialized to one request at a time by the
shared socket service.

**See**

- `withWebSocketMode` for enabling WebSocket mode for one effect
- `layerWebSocketMode` for providing WebSocket mode through a layer

**Signature**

```ts
declare class OpenAiSocket
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L484)

Since v4.0.0