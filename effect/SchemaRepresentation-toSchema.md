Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toSchema

Creates a runtime Schema from a `Document`.

**When to use**

Use when you have a serialized or computed schema representation document and
need a runtime Schema for decoding/encoding.

**Details**

Pass `options.reviver`, such as `toSchemaDefaultReviver`, to handle
`Declaration` nodes for types like `Date` and `Option`. Without a
reviver, declarations fall back to their `encodedSchema`. Circular references
are handled via lazy `Schema.suspend`.

**Gotchas**

This throws if a `$ref` is not found in `document.references`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1866)

Since v4.0.0