Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolResultPartEncoded

Encoded representation of tool result parts for serialization.

**Signature**

```ts
export interface ToolResultPartEncoded extends BasePartEncoded<"tool-result", ToolResultPartOptions> {
  /**
   * Unique identifier matching the original tool call.
   */
  readonly id: string
  /**
   * Name of the tool that was executed.
   */
  readonly name: string
  /**
   * Whether or not the result of executing the tool call handler was an error.
   */
  readonly isFailure: boolean
  /**
   * The result returned by the tool execution.
   */
  readonly result: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L684)

Since v4.0.0