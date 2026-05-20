Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionRequestMessage

Message shapes accepted by the chat completions endpoint.

**Signature**

```ts
type ChatCompletionRequestMessage = | {
    readonly role: "system" | "developer" | "user" | "assistant"
    readonly content: string | ReadonlyArray<ChatCompletionContentPart> | null
    readonly tool_calls?: ReadonlyArray<ChatCompletionRequestToolCall> | undefined
  }
  | {
    readonly role: "tool"
    readonly tool_call_id: string
    readonly content: string
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L916)

Since v4.0.0