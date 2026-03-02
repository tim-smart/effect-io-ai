Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.PartEncoded

Encoded representation of a Part.

**Signature**

```ts
type PartEncoded = | TextPartEncoded
  | ReasoningPartEncoded
  | FilePartEncoded
  | ToolCallPartEncoded
  | ToolResultPartEncoded
  | ToolApprovalResponsePartEncoded
  | ToolApprovalRequestPartEncoded
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L140)

Since v4.0.0