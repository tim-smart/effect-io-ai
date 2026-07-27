Package: `effect`<br />
Module: `Schema`<br />

## Schema.toRepresentation

Derives an intermediate `SchemaRepresentation.Document` from the encoded
side of a schema.

**Details**

Use `toType` before this function to represent the type side instead.

**Signature**

```ts
declare const toRepresentation: (schema: Constraint) => SchemaRepresentation.Document
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L14817)

Since v4.0.0