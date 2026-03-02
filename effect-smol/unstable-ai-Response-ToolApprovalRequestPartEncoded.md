Package: `effect`<br />
Module: `Response`<br />

## Response.ToolApprovalRequestPartEncoded

Encoded representation of tool approval request parts for serialization.

**Signature**

```ts
export interface ToolApprovalRequestPartEncoded
  extends BasePartEncoded<"tool-approval-request", ToolApprovalRequestPartMetadata>
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1764)

Since v1.0.0