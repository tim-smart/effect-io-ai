Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaDocument

Parses a Draft 2020-12 JSON Schema document into a `Document`.

**When to use**

Use when you need to import a Draft 2020-12 JSON Schema document into the
Effect schema representation system.

**Details**

`options.onEnter` is an optional hook called on each JSON Schema node before
processing, allowing pre-transformation.

**Gotchas**

JSON Schema import is best-effort. Some JSON Schema constructs do not map
exactly to Effect schema representations, and importing a schema previously
emitted by `toJsonSchemaDocument` may produce an equivalent approximation
rather than the original representation shape.

This throws if a `$ref` cannot be resolved within the document's definitions.
Circular `$ref`s are detected and cause an error.

**See**

- `Document`
- `toJsonSchemaDocument`
- `fromJsonSchemaMultiDocument`

**Signature**

```ts
declare const fromJsonSchemaDocument: (document: JsonSchema.Document<"draft-2020-12">, options?: { readonly onEnter?: ((js: JsonSchema.JsonSchema) => JsonSchema.JsonSchema) | undefined; }) => Document
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L2995)

Since v4.0.0