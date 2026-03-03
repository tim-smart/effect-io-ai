Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaDocument

Parses a Draft 2020-12 JSON Schema document into a `Document`.

- Use to import external JSON Schemas into the Effect representation system.
- `options.onEnter` is an optional hook called on each JSON Schema node
  before processing, allowing pre-transformation.
- Throws if a `$ref` cannot be resolved within the document's definitions.
- Circular `$ref`s are detected and cause an error.

**See**

- `Document`
- `toJsonSchemaDocument`
- `fromJsonSchemaMultiDocument`

**Signature**

```ts
declare const fromJsonSchemaDocument: (document: JsonSchema.Document<"draft-2020-12">, options?: { readonly onEnter?: ((js: JsonSchema.JsonSchema) => JsonSchema.JsonSchema) | undefined; }) => Document
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2894)

Since v4.0.0