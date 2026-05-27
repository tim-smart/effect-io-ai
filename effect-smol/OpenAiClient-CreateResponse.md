Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.CreateResponse

Request options for creating a Responses-style response with an
OpenAI-compatible provider.

**Signature**

```ts
type CreateResponse = {
  readonly metadata?: Readonly<Record<string, string>> | null | undefined
  readonly top_logprobs?: number | undefined
  readonly temperature?: number | null | undefined
  readonly top_p?: number | null | undefined
  readonly user?: string | null | undefined
  readonly safety_identifier?: string | null | undefined
  readonly prompt_cache_key?: string | null | undefined
  readonly service_tier?: string | undefined
  readonly prompt_cache_retention?: "in-memory" | "24h" | null | undefined
  readonly previous_response_id?: string | null | undefined
  readonly model?: string | undefined
  readonly reasoning?: unknown
  readonly background?: boolean | null | undefined
  readonly max_output_tokens?: number | null | undefined
  readonly max_tool_calls?: number | null | undefined
  readonly text?: {
    readonly format?: TextResponseFormatConfiguration | undefined
    readonly verbosity?: "low" | "medium" | "high" | null | undefined
  } | undefined
  readonly tools?: ReadonlyArray<Tool> | undefined
  readonly tool_choice?: ToolChoice | undefined
  readonly truncation?: "auto" | "disabled" | null | undefined
  readonly input?: string | ReadonlyArray<InputItem> | undefined
  readonly include?: ReadonlyArray<IncludeEnum> | null | undefined
  readonly parallel_tool_calls?: boolean | null | undefined
  readonly store?: boolean | null | undefined
  readonly instructions?: string | null | undefined
  readonly stream?: boolean | null | undefined
  readonly conversation?: string | null | undefined
  readonly modalities?: ReadonlyArray<"text" | "audio"> | undefined
  readonly seed?: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L661)

Since v4.0.0