Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolCallPartEncoded

Encoded representation of tool call parts for serialization.

**Signature**

```ts
export interface ToolCallPartEncoded extends BasePartEncoded<"tool-call", ToolCallPartOptions> {
  /**
   * Unique identifier for this tool call.
   */
  readonly id: string
  /**
   * Name of the tool to invoke.
   */
  readonly name: string
  /**
   * Parameters to pass to the tool.
   */
  readonly params: unknown
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L568)

Since v4.0.0