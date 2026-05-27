Package: `@effect/ai-openai`<br />
Module: `OpenAiSchema`<br />

## OpenAiSchema.InputItem

Item shape accepted by an OpenAI Responses request `input` field.

**When to use**

Use when typing structured `CreateResponse.input` array items.

**Details**

Accepted item families include request/output messages, function call and
function call output, reasoning items, item references, shell and local shell
calls and outputs, apply-patch output, and MCP approval responses.

**Signature**

```ts
type InputItem = typeof InputItem.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiSchema.ts#L478)

Since v4.0.0