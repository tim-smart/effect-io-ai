Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionResponseFormat

JSON response format configuration for chat completion requests.

**Signature**

```ts
type ChatCompletionResponseFormat = | {
    readonly type: "json_object"
  }
  | {
    readonly type: "json_schema"
    readonly json_schema: {
      readonly name: string
      readonly schema: JsonObject
      readonly description?: string | undefined
      readonly strict?: boolean | undefined
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L957)

Since v4.0.0