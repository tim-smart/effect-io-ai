Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.AssistantMessagePart

Union type of content parts allowed in assistant messages.

**Signature**

```ts
type AssistantMessagePart = | TextPart
  | FilePart
  | ReasoningPart
  | ToolCallPart
  | ToolResultPart
  | ToolApprovalRequestPart
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L1398)

Since v4.0.0