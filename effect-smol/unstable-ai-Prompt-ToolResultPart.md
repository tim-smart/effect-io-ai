Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ToolResultPart

Content part representing the result of a tool call.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const toolResultPart: Prompt.ToolResultPart = Prompt.makePart("tool-result", {
  id: "call_123",
  name: "get_weather",
  isFailure: false,
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
   * Whether or not the result of executing the tool call handler was an error.
   */
  readonly isFailure: boolean
  /**
   * The result returned by the tool execution.
   */
  readonly result: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L659)

Since v4.0.0