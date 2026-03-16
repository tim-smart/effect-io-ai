Package: `effect`<br />
Module: `Schema`<br />

## Schema.toRepresentation

Derives an intermediate `SchemaRepresentation.Document` from a schema. This
document is used internally by `toJsonSchemaDocument` and related
functions to produce JSON Schema output.

**Signature**

```ts
declare const toRepresentation: (schema: Top) => SchemaRepresentation.Document
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10455)

Since v4.0.0