Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.Document

A structured container for a single JSON Schema and its associated
definitions.

**When to use**

Use when you need to carry a root schema together with its shared
definitions, or when converting between dialects with the `from*` and `to*`
functions.

**Details**

The `schema` field holds the root schema *without* the definitions
collection. Root definitions are stored separately in `definitions` and
referenced via `#/$defs/<name>` for Draft-2020-12, `#/definitions/<name>`
for Draft-07, and `#/components/schemas/<name>` for OpenAPI 3.1 and
OpenAPI 3.0.

**Example** (Inspecting a parsed document)

```ts
import { JsonSchema } from "effect"

const raw: JsonSchema.JsonSchema = {
  type: "string",
  $defs: { Trimmed: { type: "string", minLength: 1 } }
}

const doc = JsonSchema.fromSchemaDraft2020_12(raw)

console.log(doc.dialect)     // "draft-2020-12"
console.log(doc.schema)      // { type: "string" }
console.log(doc.definitions) // { Trimmed: { type: "string", minLength: 1 } }
```

**See**

- `MultiDocument`
- `fromSchemaDraft2020_12`

**Signature**

```ts
export interface Document<D extends Dialect> {
  readonly dialect: D
  readonly schema: JsonSchema
  readonly definitions: Definitions
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L131)

Since v4.0.0