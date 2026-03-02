Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.AssistantMessagePartEncoded

Union type of encoded content parts for assistant messages.

**Signature**

```ts
type AssistantMessagePartEncoded = | TextPartEncoded
  | FilePartEncoded
  | ReasoningPartEncoded
  | ToolCallPartEncoded
  | ToolResultPartEncoded
  | ToolApprovalRequestPartEncoded
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1438)

Since v4.0.0