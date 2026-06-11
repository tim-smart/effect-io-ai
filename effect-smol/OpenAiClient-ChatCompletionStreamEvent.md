Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionStreamEvent

Streaming chat completion event, including decoded chunks and the `[DONE]`
sentinel.

**Signature**

```ts
type ChatCompletionStreamEvent = ChatCompletionChunk | "[DONE]"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L1195)

Since v4.0.0