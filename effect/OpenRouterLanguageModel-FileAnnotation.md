Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.FileAnnotation

File annotations emitted on OpenRouter assistant messages and exposed in
finish metadata.

**Signature**

```ts
type FileAnnotation = Extract<
  NonNullable<typeof Generated.AssistantMessage.fields.annotations.Type>[number],
  { type: "file" }
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L101)

Since v4.0.0