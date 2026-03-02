Package: `effect`<br />
Module: `Tool`<br />

## Tool.isUserDefined

Type guard to check if a value is a user-defined tool.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

const UserDefinedTool = Tool.make("Calculator", {
  description: "Performs basic arithmetic operations",
  parameters: Schema.Struct({
    operation: Schema.Literals(["add", "subtract", "multiply", "divide"]),
    a: Schema.Number,
    b: Schema.Number
  }),
  success: Schema.Number
})

const ProviderDefinedTool = Tool.providerDefined({
  id: "openai.web_search",
  customName: "OpenAiWebSearch",
  providerName: "web_search",
  args: Schema.Struct({
    query: Schema.String
  }),
  success: Schema.Struct({
    results: Schema.Array(Schema.Struct({
      title: Schema.String,
      url: Schema.String,
      snippet: Schema.String
    }))
  })
})

console.log(Tool.isUserDefined(UserDefinedTool)) // true
console.log(Tool.isUserDefined(ProviderDefinedTool)) // false
```

**Signature**

```ts
declare const isUserDefined: (u: unknown) => u is Tool<string, any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L523)

Since v1.0.0