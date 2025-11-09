Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolCallPart

Response part representing a tool call request.

**Example**

```ts
import { Response } from "@effect/ai"
import { Schema } from "effect"

const weatherParams = Schema.Struct({
  city: Schema.String,
  units: Schema.optional(Schema.Literal("celsius", "fahrenheit"))
})

const toolCallPart: Response.ToolCallPart<
  "get_weather",
  typeof weatherParams.fields
> = Response.makePart("tool-call", {
  id: "call_123",
  name: "get_weather",
  params: { city: "San Francisco", units: "celsius" },
  providerExecuted: false,
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
   * Optional provider-specific name for the tool, which can be useful when the
   * name of the tool in the `Toolkit` and the name of the tool used by the
   * model are different.
   *
   * This is usually happens only with provider-defined tools which require a
   * user-space handler.
   */
  readonly providerName?: string | undefined
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1397)

Since v1.0.0