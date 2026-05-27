Package: `@effect/ai-openai`<br />
Module: `OpenAiSchema`<br />

## OpenAiSchema.ResponseStreamEvent

Server-sent event shape emitted by OpenAI Responses API streams.

**When to use**

Use when typing events from a streaming OpenAI Responses API request.

**Details**

Includes known response stream events plus a fallback shape for unknown future
event types.

**Signature**

```ts
type ResponseStreamEvent = typeof ResponseStreamEvent.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiSchema.ts#L1159)

Since v4.0.0