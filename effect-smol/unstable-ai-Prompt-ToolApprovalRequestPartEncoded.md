Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolApprovalRequestPartEncoded

Encoded representation of tool approval request parts for serialization.

**Signature**

```ts
export interface ToolApprovalRequestPartEncoded
  extends BasePartEncoded<"tool-approval-request", ToolApprovalRequestPartOptions>
{
  /**
   * Unique identifier for this approval flow.
   */
  readonly approvalId: string
  /**
   * The tool call ID requiring approval.
   */
  readonly toolCallId: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L907)

Since v4.0.0