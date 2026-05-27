Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaMultiDocument

Converts a `MultiDocument` to a Draft 2020-12 JSON Schema
multi-document.

**When to use**

Use when you have multiple schemas sharing references.

**Details**

This is a pure function and does not mutate the input.

**See**

- `MultiDocument`
- `toJsonSchemaDocument`
- `fromJsonSchemaMultiDocument`

**Signature**

```ts
declare const toJsonSchemaMultiDocument: (document: MultiDocument, options?: Schema.ToJsonSchemaOptions) => JsonSchema.MultiDocument<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2294)

Since v4.0.0