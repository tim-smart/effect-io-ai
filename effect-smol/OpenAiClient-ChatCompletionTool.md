Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionTool

Function tool definition accepted by the chat completions endpoint.

**Signature**

```ts
type ChatCompletionTool = {
  readonly type: "function"
  readonly function: {
    readonly name: string
    readonly description?: string | null | undefined
    readonly parameters?: JsonObject | undefined
    readonly strict?: boolean | undefined
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L926)

Since v4.0.0