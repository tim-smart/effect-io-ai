Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Response

Responses-style response object returned by compatible providers or embedded
in response stream lifecycle events.

**Signature**

```ts
type Response = {
  readonly id: string
  readonly object?: "response" | undefined
  readonly model: string
  readonly status?: "completed" | "failed" | "in_progress" | "cancelled" | "queued" | "incomplete" | undefined
  readonly created_at: number
  readonly output: ReadonlyArray<OutputItem>
  readonly usage?: ResponseUsage | null | undefined
  readonly incomplete_details?:
    | {
      readonly reason?: "max_output_tokens" | "content_filter" | undefined
    }
    | null
    | undefined
  readonly service_tier?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L652)

Since v4.0.0