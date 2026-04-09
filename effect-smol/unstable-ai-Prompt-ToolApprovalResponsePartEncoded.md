Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolApprovalResponsePartEncoded

Encoded representation of tool approval response parts for serialization.

**Signature**

```ts
export interface ToolApprovalResponsePartEncoded
  extends BasePartEncoded<"tool-approval-response", ToolApprovalResponsePartOptions>
{
  /**
   * References the original approval request.
   */
  readonly approvalId: string
  /**
   * User's decision to approve or deny the tool execution.
   */
  readonly approved: boolean
  /**
   * Optional justification for the decision.
   */
  readonly reason?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L801)

Since v4.0.0