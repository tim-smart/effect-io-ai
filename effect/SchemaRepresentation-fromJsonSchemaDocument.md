Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaDocument

Imports a JSON Schema Draft 2020-12 document as a runtime schema.

**When to use**

Use when you need to validate or transform values described by an external JSON Schema document.

**Gotchas**

Import is best-effort. Built-in declarations and checks are reconstructed with importer-owned revivers. Callback results are used directly, and exceptions raised by a callback pass through unchanged.

**See**

- `fromJsonSchemaMultiDocument` for multiple roots sharing definitions
- `toRepresentation` for converting the result to a representation document

**Signature**

```ts
declare const fromJsonSchemaDocument: (document: JsonSchema.Document<"draft-2020-12">, options?: FromJsonSchemaOptions) => Schema.Top
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1177)

Since v4.0.0