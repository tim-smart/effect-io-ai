Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.fromSchemaOpenApi3_1

Parses a raw OpenAPI 3.1 JSON Schema into a `Document<"draft-2020-12">`.

**When to use**

Use when you need to consume raw JSON Schema objects from an OpenAPI 3.1
specification.

**Details**

This rewrites `#/components/schemas/...` refs to `#/$defs/...`, then delegates
to `fromSchemaDraft2020_12`.

**Example** (Parsing an OpenAPI 3.1 schema)

```ts
import { JsonSchema } from "effect"

const raw: JsonSchema.JsonSchema = {
  type: "object",
  properties: {
    user: { $ref: "#/components/schemas/User" }
  }
}

const doc = JsonSchema.fromSchemaOpenApi3_1(raw)
// $ref is rewritten to Draft-2020-12 form
console.log(doc.schema.properties) // { user: { $ref: "#/$defs/User" } }
```

**See**

- `fromSchemaOpenApi3_0`
- `toMultiDocumentOpenApi3_1`

**Signature**

```ts
declare const fromSchemaOpenApi3_1: (js: JsonSchema) => Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L511)

Since v4.0.0