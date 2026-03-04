Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toSchema

Reconstructs a runtime Schema from a `Document`.

- Use when you have a serialized or computed representation and need a
  working Schema for decoding/encoding.
- Pass `options.reviver` (e.g. `toSchemaDefaultReviver`) to handle
  `Declaration` nodes for types like `Date`, `Option`, etc.
- Without a reviver, declarations fall back to their `encodedSchema`.
- Handles circular references via lazy `Schema.suspend`.
- Throws if a `$ref` is not found in `document.references`.

**Example** (Reconstructing a Schema)

```ts
import { Schema, SchemaRepresentation } from "effect"

const doc = SchemaRepresentation.fromAST(
  Schema.Struct({ name: Schema.String }).ast
)

const schema = SchemaRepresentation.toSchema(doc)
console.log(JSON.stringify(Schema.toJsonSchemaDocument(schema), null, 2))
```

**See**

- `Document`
- `Reviver`
- `toSchemaDefaultReviver`

**Signature**

```ts
declare const toSchema: <S extends Schema.Top = Schema.Top>(document: Document, options?: { readonly reviver?: Reviver<Schema.Top> | undefined; }) => S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1815)

Since v4.0.0