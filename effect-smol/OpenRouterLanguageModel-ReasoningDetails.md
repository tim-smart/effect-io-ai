Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.ReasoningDetails

OpenRouter assistant reasoning detail blocks preserved for multi-turn
conversations.

**Signature**

```ts
type ReasoningDetails = Exclude<typeof Generated.AssistantMessage.Encoded["reasoning_details"], undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L98)

Since v4.0.0