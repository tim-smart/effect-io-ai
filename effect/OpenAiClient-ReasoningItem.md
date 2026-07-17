Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.ReasoningItem

Reasoning output item containing encrypted reasoning content, summaries, and
optional reasoning text.

**Signature**

```ts
type ReasoningItem = {
  readonly type: "reasoning"
  readonly id: string
  readonly encrypted_content?: string | null | undefined
  readonly summary: ReadonlyArray<SummaryTextContent>
  readonly content?: ReadonlyArray<ReasoningTextContent> | undefined
  readonly status?: MessageStatus | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L494)

Since v4.0.0