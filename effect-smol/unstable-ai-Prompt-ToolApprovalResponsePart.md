Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolApprovalResponsePart

Content part representing a user's response to a tool approval request.

Used in tool messages to approve or deny tool execution when tools have
the `needsApproval` property set.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const approvalResponse: Prompt.ToolApprovalResponsePart = Prompt.makePart(
  "tool-approval-response",
  {
    approvalId: "approval_123",
    approved: true
  }
)

const denialResponse: Prompt.ToolApprovalResponsePart = Prompt.makePart(
  "tool-approval-response",
  {
    approvalId: "approval_456",
    approved: false,
    reason: "Operation not allowed"
  }
)
```

**Signature**

```ts
export interface ToolApprovalResponsePart extends BasePart<"tool-approval-response", ToolApprovalResponsePartOptions> {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L784)

Since v4.0.0