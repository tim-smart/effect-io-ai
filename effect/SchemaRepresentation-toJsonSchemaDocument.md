Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaDocument

Converts a `Document` to a Draft 2020-12 JSON Schema document.

**When to use**

Use when you need to produce a standard JSON Schema document from a schema
representation `Document`.

**Gotchas**

JSON Schema generation is best-effort. Some Effect schema representation
semantics cannot be represented exactly in JSON Schema, and importing an
emitted JSON Schema may produce an equivalent approximation rather than the
original representation shape.

**Example** (Generating JSON Schema)

```ts
import { Schema, SchemaRepresentation } from "effect"

const doc = SchemaRepresentation.fromAST(Schema.String.ast)
const jsonSchema = SchemaRepresentation.toJsonSchemaDocument(doc)
console.log(jsonSchema.schema.type)
// "string"
```

**See**

- `Document`
- `toJsonSchemaMultiDocument`
- `fromJsonSchemaDocument`

**Signature**

```ts
declare const toJsonSchemaDocument: (document: Document, options?: Schema.ToJsonSchemaOptions) => JsonSchema.Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L2208)

Since v4.0.0