Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ChatCompletionRequest

Request payload for the OpenAI-compatible chat completions endpoint.

**Signature**

```ts
type ChatCompletionRequest = {
  readonly model: string
  readonly messages: ReadonlyArray<ChatCompletionRequestMessage>
  readonly temperature?: number | null | undefined
  readonly top_p?: number | null | undefined
  readonly max_tokens?: number | null | undefined
  readonly user?: string | null | undefined
  readonly seed?: number | undefined
  readonly parallel_tool_calls?: boolean | null | undefined
  readonly response_format?: ChatCompletionResponseFormat | undefined
  readonly tools?: ReadonlyArray<ChatCompletionTool> | undefined
  readonly tool_choice?: ChatCompletionToolChoice | undefined
  readonly service_tier?: string | undefined
  readonly reasoning?: unknown
  readonly stream?: boolean | undefined
  readonly stream_options?: {
    readonly include_usage?: boolean | undefined
  } | undefined
  readonly [x: string]: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L983)

Since v4.0.0