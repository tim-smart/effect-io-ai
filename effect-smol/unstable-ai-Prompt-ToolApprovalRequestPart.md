Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolApprovalRequestPart

Content part representing a tool approval request from the framework.

Stored in assistant messages when a tool requires user approval before
execution. The user responds with a `ToolApprovalResponsePart` in a tool
message.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const approvalRequest: Prompt.ToolApprovalRequestPart = Prompt.makePart(
  "tool-approval-request",
  {
    approvalId: "approval_123",
    toolCallId: "call_456"
  }
)
```

**Signature**

```ts
export interface ToolApprovalRequestPart extends BasePart<"tool-approval-request", ToolApprovalRequestPartOptions> {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L894)

Since v4.0.0