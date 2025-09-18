Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.isUserDefined

Type guard to check if a value is a user-defined tool.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

const UserDefinedTool = Tool.make("Calculator", {
  description: "Performs basic arithmetic operations",
  parameters: {
    operation: Schema.Literal("add", "subtract", "multiply", "divide"),
    a: Schema.Number,
    b: Schema.Number
  },
  success: Schema.Number
})

const ProviderDefinedTool = Tool.providerDefined({
  id: "openai.web_search",
  toolkitName: "WebSearch",
  providerName: "web_search",
  args: {
    query: Schema.String
  },
  success: Schema.Struct({
    results: Schema.Array(Schema.Struct({
      title: Schema.String,
      url: Schema.String,
      snippet: Schema.String
    }))
  })
})

console.log(Tool.isUserDefined(UserDefinedTool))      // true
console.log(Tool.isUserDefined(ProviderDefinedTool))  // false
```

**Signature**

```ts
declare const isUserDefined: (u: unknown) => u is Tool<string, any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L387)

Since v1.0.0