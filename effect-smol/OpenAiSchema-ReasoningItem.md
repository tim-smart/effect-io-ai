Package: `@effect/ai-openai`<br />
Module: `OpenAiSchema`<br />

## OpenAiSchema.ReasoningItem

Reasoning output item containing encrypted content, summaries, and optional reasoning text.

**When to use**

Use when typing OpenAI Responses reasoning items that may be carried into
later request input.

**Details**

Reasoning items represent model reasoning content. `summary` is required,
while `content` and `status` are optional.

**Gotchas**

`encrypted_content` is populated only when `reasoning.encrypted_content` is
requested through `include`.

**Signature**

```ts
type ReasoningItem = typeof ReasoningItem.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiSchema.ts#L345)

Since v4.0.0