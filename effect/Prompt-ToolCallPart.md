Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ToolCallPart

Content part representing a tool call request.

**Example**

```ts
import { Prompt } from "@effect/ai"

const toolCallPart: Prompt.ToolCallPart = Prompt.makePart("tool-call", {
  id: "call_123",
  name: "get_weather",
  params: { city: "San Francisco", units: "celsius" },
  providerExecuted: false,
})
```

**Signature**

```ts
export interface ToolCallPart extends BasePart<"tool-call", ToolCallPartOptions> {
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
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L516)

Since v1.0.0