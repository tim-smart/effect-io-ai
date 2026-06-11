Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.ChatStreamingResponseChunkData

Decoded `data` payload from an OpenRouter chat completion streaming chunk.

**Details**

The payload contains streamed choices, model metadata, optional usage, and may
include an OpenRouter error object for a streamed response.

**Signature**

```ts
type ChatStreamingResponseChunkData = typeof Generated.ChatStreamingResponseChunk.fields.data.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L75)

Since v4.0.0