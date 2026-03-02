Package: `effect`<br />
Module: `Response`<br />

## Response.ToolApprovalRequestPart

Response part representing a tool approval request.

Emitted when a tool requires user approval before execution. The framework
checks the tool's `needsApproval` property and emits this part instead of
executing the tool when approval is required.

**Example**

```ts
import { Response } from "effect/unstable/ai"

const approvalRequest: Response.ToolApprovalRequestPart = Response.makePart(
  "tool-approval-request",
  {
    approvalId: "approval_123",
    toolCallId: "call_456"
  }
)
```

**Signature**

```ts
export interface ToolApprovalRequestPart extends BasePart<"tool-approval-request", ToolApprovalRequestPartMetadata> {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1747)

Since v1.0.0