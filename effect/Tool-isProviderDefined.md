Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.isProviderDefined

Type guard to check if a value is a provider-defined tool.

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

console.log(Tool.isUserDefined(UserDefinedTool))      // false
console.log(Tool.isUserDefined(ProviderDefinedTool))  // true
```

**Signature**

```ts
declare const isProviderDefined: (u: unknown) => u is ProviderDefined<string, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L434)

Since v1.0.0