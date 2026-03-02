Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaMultiDocument

Parses a Draft 2020-12 JSON Schema multi-document into a
`MultiDocument`.

- Use to import multiple JSON Schemas sharing definitions.
- `options.onEnter` is an optional hook called on each JSON Schema node
  before processing.
- Throws if a `$ref` cannot be resolved.

**See**

- `MultiDocument`
- `toJsonSchemaMultiDocument`
- `fromJsonSchemaDocument`

**Signature**

```ts
declare const fromJsonSchemaMultiDocument: (document: JsonSchema.MultiDocument<"draft-2020-12">, options?: { readonly onEnter?: ((js: JsonSchema.JsonSchema) => JsonSchema.JsonSchema) | undefined; }) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2921)

Since v4.0.0