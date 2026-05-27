Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ResponseUsage

Token accounting reported on Responses-style response objects.

**Signature**

```ts
type ResponseUsage = {
  readonly input_tokens: number
  readonly output_tokens: number
  readonly total_tokens: number
  readonly input_tokens_details?: unknown
  readonly output_tokens_details?: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L701)

Since v4.0.0