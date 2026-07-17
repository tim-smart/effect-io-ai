Package: `effect`<br />
Module: `Tool`<br />

## Tool.getJsonSchema

Generates a JSON Schema for a tool.

**Details**

This function creates a JSON Schema representation that can be used by
large language models to indicate the structure and type of the parameters
that a given tool call should receive.

May accept an optional `CodecTransformer` which can be used to transform the
tool parameter schema so that the resultant JSON schema for the tool call
parameters are in a format that conforms to any provider-specific constraints.

**Example** (Generating a tool JSON schema)

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

const weatherTool = Tool.make("get_weather", {
  parameters: Schema.Struct({
    location: Schema.String,
    units: Schema.Literals(["celsius", "fahrenheit"])
  })
})

const jsonSchema = Tool.getJsonSchema(weatherTool)
console.log(jsonSchema)
// {
//   type: "object",
//   properties: {
//     location: { type: "string" },
//     units: { type: "string", enum: ["celsius", "fahrenheit"] }
//   },
//   required: ["location", "units"]
// }
```

**Signature**

```ts
declare const getJsonSchema: <Tool extends Any>(tool: Tool, options?: { readonly transformer?: CodecTransformer; }) => JsonSchema.JsonSchema
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tool.ts#L1644)

Since v4.0.0