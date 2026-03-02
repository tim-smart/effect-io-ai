Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaDocument

Converts a `Document` to a Draft 2020-12 JSON Schema document.

- Use to produce a standard JSON Schema from an Effect Schema representation.
- Pure function; does not mutate the input.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2139)

Since v4.0.0