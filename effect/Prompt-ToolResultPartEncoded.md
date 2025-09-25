Package: `@effect/ai`<br />
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
   * The result returned by the tool execution.
   */
  readonly result: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L593)

Since v1.0.0