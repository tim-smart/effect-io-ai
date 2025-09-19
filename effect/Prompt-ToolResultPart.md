Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ToolResultPart

Content part representing the result of a tool call.

**Example**

```ts
import { Prompt } from "@effect/ai"

const toolResultPart: Prompt.ToolResultPart = Prompt.makePart("tool-result", {
  id: "call_123",
  name: "get_weather",
  result: {
    temperature: 22,
    condition: "sunny",
    humidity: 65
  }
})
```

**Signature**

```ts
export interface ToolResultPart extends BasePart<"tool-result", ToolResultPartOptions> {
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L568)

Since v1.0.0