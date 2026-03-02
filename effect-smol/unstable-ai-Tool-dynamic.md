Package: `effect`<br />
Module: `Tool`<br />

## Tool.dynamic

Creates a dynamic tool that can accept either an Effect Schema or a raw
JSON Schema for its parameters.

This is useful for tools where the schema isn't known at compile time,
such as MCP tools discovered at runtime or tools from external configurations.

- When `parameters` is an Effect Schema: full type safety with validation
- When `parameters` is a JSON Schema: handler receives `unknown`, no validation

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// With Effect Schema (typed parameters)
const Calculator = Tool.dynamic("Calculator", {
  parameters: Schema.Struct({
    operation: Schema.Literals(["add", "subtract"]),
    a: Schema.Number,
    b: Schema.Number
  }),
  success: Schema.Number
})

// With JSON Schema (untyped parameters)
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
declare const dynamic: <const Name extends string, const Options extends { readonly description?: string | undefined; readonly parameters?: Schema.Top | JsonSchema.JsonSchema | undefined; readonly success?: Schema.Top | undefined; readonly failure?: Schema.Top | undefined; readonly failureMode?: FailureMode | undefined; readonly needsApproval?: NeedsApproval<any> | undefined; }>(name: Name, options?: Options) => Dynamic<Name, { readonly parameters: Options extends { readonly parameters: infer P; } ? P extends Schema.Top ? P : P extends JsonSchema.JsonSchema ? P : typeof Schema.Unknown : typeof Schema.Unknown; readonly success: Options extends { readonly success: infer S extends Schema.Top; } ? S : typeof Schema.Unknown; readonly failure: Options extends { readonly failure: infer F extends Schema.Top; } ? F : typeof Schema.Never; readonly failureMode: Options extends { readonly failureMode: infer M extends FailureMode; } ? M : "error"; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1258)

Since v1.0.0