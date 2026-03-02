Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.fromSchemaOpenApi3_0

Parses a raw OpenAPI 3.0 JSON Schema into a `Document<"draft-2020-12">`.

- Use when consuming schemas from an OpenAPI 3.0 specification.
- Handles OpenAPI 3.0 extensions: `nullable`, singular `example`,
  boolean `exclusiveMinimum`/`exclusiveMaximum`.
- Normalizes the schema to Draft-07 first, then converts to
  Draft-2020-12 via `fromSchemaDraft07`.
- Does not mutate the input. Allocates a new `Document`.

**Example** (Parsing an OpenAPI 3.0 nullable schema)

```ts
import { JsonSchema } from "effect"

const raw: JsonSchema.JsonSchema = {
  type: "string",
  nullable: true
}

const doc = JsonSchema.fromSchemaOpenApi3_0(raw)
// nullable is expanded into a type array
console.log(doc.schema.type) // ["string", "null"]
```

**See**

- `fromSchemaOpenApi3_1`
- `fromSchemaDraft07`

**Signature**

```ts
declare const fromSchemaOpenApi3_0: (schema: JsonSchema) => Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L459)

Since v4.0.0