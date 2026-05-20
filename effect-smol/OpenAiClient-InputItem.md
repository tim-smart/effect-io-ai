Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.InputItem

Item shapes accepted by a Responses-style `input` field.

**Details**

Supports input messages, output messages, tool calls, tool outputs, reasoning
items, custom tool interactions, and item references.

**Signature**

```ts
type InputItem = | {
    readonly role: "user" | "assistant" | "system" | "developer"
    readonly content: string | ReadonlyArray<InputContent>
    readonly type?: "message" | undefined
  }
  | {
    readonly type?: "message" | undefined
    readonly role: "user" | "system" | "developer"
    readonly status?: MessageStatus | undefined
    readonly content: ReadonlyArray<InputContent>
  }
  | OutputMessage
  | FunctionCall
  | FunctionCallOutput
  | ReasoningItem
  | CustomToolCallOutput
  | CustomToolCall
  | ItemReference
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L518)

Since v4.0.0