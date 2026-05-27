Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionContentPart

Structured content parts accepted in chat completion messages.

**Signature**

```ts
type ChatCompletionContentPart = | {
    readonly type: "text"
    readonly text: string
  }
  | {
    readonly type: "image_url"
    readonly image_url: {
      readonly url: string
      readonly detail?: "low" | "high" | "auto" | undefined
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L935)

Since v4.0.0