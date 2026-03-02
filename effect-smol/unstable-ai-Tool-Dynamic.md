Package: `effect`<br />
Module: `Tool`<br />

## Tool.Dynamic

A dynamic tool is a tool where the schema may not be known at compile time.

Dynamic tools support two modes:
- **Effect Schema mode**: Full type safety with validation (like `Tool.make`)
- **JSON Schema mode**: Raw JSON Schema for the model, handler receives `unknown`

This enables scenarios such as MCP tools discovered at runtime, user-defined
functions loaded from external sources, or plugin systems.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// Dynamic tool with Effect Schema (typed)
const Calculator = Tool.dynamic("Calculator", {
  parameters: Schema.Struct({
    operation: Schema.Literals(["add", "subtract"]),
    a: Schema.Number,
    b: Schema.Number
  }),
  success: Schema.Number
})

// Dynamic tool with JSON Schema (untyped parameters)
const McpTool = Tool.dynamic("McpTool", {
  description: "Tool from MCP server",
  parameters: {
    type: "object",
    properties: { query: { type: "string" } },
    required: ["query"]
  }
})
```

**Signature**

```ts
export interface Dynamic<
  out Name extends string,
  out Config extends {
    readonly parameters: Schema.Top | JsonSchema.JsonSchema
    readonly success: Schema.Top
    readonly failure: Schema.Top
    readonly failureMode: FailureMode
  },
  out Requirements = never
> extends
  Tool<
    Name,
    {
      readonly parameters: Config["parameters"] extends Schema.Top ? Config["parameters"] : typeof Schema.Unknown
      readonly success: Config["success"]
      readonly failure: Config["failure"]
      readonly failureMode: Config["failureMode"]
    },
    Requirements
  >
{
  readonly [DynamicTypeId]: typeof DynamicTypeId

  /**
   * The raw JSON Schema for parameters. Present when `parameters` was provided
   * as a JSON Schema, `undefined` when an Effect Schema was used.
   */
  readonly jsonSchema: Config["parameters"] extends Schema.Top ? undefined : JsonSchema.JsonSchema
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L448)

Since v1.0.0