Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionRequestToolCall

Tool call data attached to an assistant chat completion message.

**Signature**

```ts
type ChatCompletionRequestToolCall = {
  readonly id: string
  readonly type: "function"
  readonly function: {
    readonly name: string
    readonly arguments: string
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L935)

Since v4.0.0