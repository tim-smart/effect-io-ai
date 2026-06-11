Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionToolChoice

Controls whether the model may call tools and can force a specific function.

**Signature**

```ts
type ChatCompletionToolChoice = | "none"
  | "auto"
  | "required"
  | {
    readonly type: "function"
    readonly function: {
      readonly name: string
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L981)

Since v4.0.0