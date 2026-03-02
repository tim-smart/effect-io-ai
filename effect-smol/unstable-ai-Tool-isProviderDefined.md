Package: `effect`<br />
Module: `Tool`<br />

## Tool.isProviderDefined

Type guard to check if a value is a provider-defined tool.

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

console.log(Tool.isUserDefined(UserDefinedTool)) // false
console.log(Tool.isUserDefined(ProviderDefinedTool)) // true
```

**Signature**

```ts
declare const isProviderDefined: (u: unknown) => u is ProviderDefined<`${string}.${string}`, string, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L567)

Since v1.0.0