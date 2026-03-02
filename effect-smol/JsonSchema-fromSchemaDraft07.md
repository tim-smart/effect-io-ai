Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.fromSchemaDraft07

Parses a raw Draft-07 JSON Schema into a `Document<"draft-2020-12">`.

- Use when you have a JSON Schema that follows Draft-07 conventions.
- Converts Draft-07 tuple syntax (`items` as array + `additionalItems`)
  to Draft-2020-12 form (`prefixItems` + `items`).
- Rewrites `#/definitions/...` refs to `#/$defs/...`.
- Extracts root-level `definitions` into the `definitions` field.
- Does not mutate the input. Allocates a new `Document`.
- Unsupported keywords (e.g. `if`/`then`/`else`, `$id`) are dropped.

**Example** (Parsing a Draft-07 schema)

```ts
import { JsonSchema } from "effect"

const raw: JsonSchema.JsonSchema = {
  type: "object",
  properties: {
    tags: {
      type: "array",
      items: { type: "string" }
    }
  }
}

const doc = JsonSchema.fromSchemaDraft07(raw)
console.log(doc.dialect) // "draft-2020-12"
console.log(doc.schema.properties) // { tags: { type: "array", items: { type: "string" } } }
```

**See**

- `fromSchemaDraft2020_12`
- `fromSchemaOpenApi3_0`
- `toDocumentDraft07`

**Signature**

```ts
declare const fromSchemaDraft07: (js: JsonSchema) => Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L248)

Since v4.0.0