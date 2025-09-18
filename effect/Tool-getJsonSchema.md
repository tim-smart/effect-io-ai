Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.getJsonSchema

Generates a JSON Schema for a tool.

This function creates a JSON Schema representation that can be used by
large language models to indicate the structure and type of the parameters
that a given tool call should receive.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

const weatherTool = Tool.make("get_weather", {
  parameters: {
    location: Schema.String,
    units: Schema.optional(Schema.Literal("celsius", "fahrenheit"))
  }
})

const jsonSchema = Tool.getJsonSchema(weatherTool)
console.log(jsonSchema)
// {
//   type: "object",
//   properties: {
//     location: { type: "string" },
//     units: { type: "string", enum: ["celsius", "fahrenheit"] }
//   },
//   required: ["location"]
// }
```

**Signature**

```ts
declare const getJsonSchema: <Name extends string, Config extends { readonly parameters: AnyStructSchema; readonly success: Schema.Schema.Any; readonly failure: Schema.Schema.All; }>(tool: Tool<Name, Config>) => JsonSchema.JsonSchema7
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1144)

Since v1.0.0