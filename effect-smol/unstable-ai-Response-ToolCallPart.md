Package: `effect`<br />
Module: `Response`<br />

## Response.ToolCallPart

Response part representing a tool call request.

**Example**

```ts
import { Schema } from "effect"
import { Response } from "effect/unstable/ai"

const weatherParams = Schema.Struct({
  city: Schema.String,
  units: Schema.optional(Schema.Literals(["celsius", "fahrenheit"]))
})

const toolCallPart: Response.ToolCallPart<
  "get_weather",
  {
    readonly city: string
    readonly units?: "celsius" | "fahrenheit"
  }
> = Response.makePart("tool-call", {
  id: "call_123",
  name: "get_weather",
  params: { city: "San Francisco", units: "celsius" },
  providerExecuted: false
})
```

**Signature**

```ts
export interface ToolCallPart<Name extends string, Params> extends BasePart<"tool-call", ToolCallPartMetadata> {
  /**
   * Unique identifier for this tool call.
   */
  readonly id: string
  /**
   * Name of the tool being called, which corresponds to the name of the tool
   * in the `Toolkit` included with the request.
   */
  readonly name: Name
  /**
   * Parameters to pass to the tool.
   */
  readonly params: Params
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1344)

Since v1.0.0