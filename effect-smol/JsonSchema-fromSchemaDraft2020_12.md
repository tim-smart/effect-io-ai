Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.fromSchemaDraft2020_12

Parses a raw Draft-2020-12 JSON Schema into a `Document<"draft-2020-12">`.

- Use when you already have a schema in Draft-2020-12 format.
- Separates `$defs` from the root schema into the `definitions` field.
- Does not mutate the input. Allocates a new `Document`.
- Unlike `fromSchemaDraft07`, this performs no keyword rewriting.

**Example** (Parsing a Draft-2020-12 schema)

```ts
import { JsonSchema } from "effect"

const raw: JsonSchema.JsonSchema = {
  type: "number",
  minimum: 0,
  $defs: { PositiveInt: { type: "integer", minimum: 1 } }
}

const doc = JsonSchema.fromSchemaDraft2020_12(raw)
console.log(doc.schema)      // { type: "number", minimum: 0 }
console.log(doc.definitions) // { PositiveInt: { type: "integer", minimum: 1 } }
```

**See**

- `fromSchemaDraft07`
- `fromSchemaOpenApi3_1`

**Signature**

```ts
declare const fromSchemaDraft2020_12: (js: JsonSchema) => Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L385)

Since v4.0.0