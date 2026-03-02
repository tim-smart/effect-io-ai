Package: `effect`<br />
Module: `Tool`<br />

## Tool.NeedsApprovalContext

Context provided to the `needsApproval` function when dynamically
determining if a tool requires user approval.

**Signature**

```ts
export interface NeedsApprovalContext {
  /**
   * The unique identifier of the tool call.
   */
  readonly toolCallId: string
  /**
   * The conversation messages leading up to this tool call.
   */
  readonly messages: ReadonlyArray<Prompt.Message>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L109)

Since v1.0.0