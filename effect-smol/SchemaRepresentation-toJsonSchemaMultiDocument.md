Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaMultiDocument

Converts a `MultiDocument` to a Draft 2020-12 JSON Schema
multi-document.

**When to use**

Use when you need to export related schema representation documents together
so shared definitions stay in multi-document JSON Schema form.

**Gotchas**

JSON Schema generation is best-effort. Some Effect schema representation
semantics cannot be represented exactly in JSON Schema, and importing an
emitted JSON Schema may produce equivalent approximations rather than the
original representation shapes.

**See**

- `MultiDocument`
- `toJsonSchemaDocument`
- `fromJsonSchemaMultiDocument`

**Signature**

```ts
declare const toJsonSchemaMultiDocument: (document: MultiDocument, options?: Schema.ToJsonSchemaOptions) => JsonSchema.MultiDocument<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2236)

Since v4.0.0