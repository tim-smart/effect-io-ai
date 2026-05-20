Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.TextResponseFormatConfiguration

Text output format configuration for plain text, JSON object, or JSON Schema
responses.

**Signature**

```ts
type TextResponseFormatConfiguration = | {
    readonly type: "text"
  }
  | {
    readonly type: "json_schema"
    readonly description?: string | undefined
    readonly name: string
    readonly schema: JsonObject
    readonly strict?: boolean | null | undefined
  }
  | {
    readonly type: "json_object"
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L588)

Since v4.0.0