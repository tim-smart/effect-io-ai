Package: `@effect/ai-openai`<br />
Module: `OpenAiSchema`<br />

## OpenAiSchema.ToolChoice

Tool selection mode or named tool choice for a Responses request.

**Details**

Accepted forms are `"none"`, `"auto"`, `"required"`, an allowed-tools set,
a named function or custom tool, or a provider-defined tool choice.

**Signature**

```ts
type ToolChoice = typeof ToolChoice.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiSchema.ts#L606)

Since v4.0.0