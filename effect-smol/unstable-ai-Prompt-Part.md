Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.Part

Union type representing all possible content parts within messages.

**Details**

Parts are the building blocks of message content, supporting text, files,
reasoning, tool calls, tool results, tool approval responses, and tool
approval requests.

**Signature**

```ts
type Part = | TextPart
  | ReasoningPart
  | FilePart
  | ToolCallPart
  | ToolResultPart
  | ToolApprovalResponsePart
  | ToolApprovalRequestPart
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L124)

Since v4.0.0