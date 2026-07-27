Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaDocument

Compiles a live representation document to JSON Schema Draft 2020-12.

**When to use**

Use when you need JSON Schema output from a representation whose checks carry compiler annotations.

**Gotchas**

Opaque declarations are represented by an unconstrained JSON Schema. Check callback results are used directly, and exceptions raised by a callback pass through unchanged.

**See**

- `toJsonSchemaMultiDocument` for multiple roots sharing definitions

**Signature**

```ts
declare const toJsonSchemaDocument: (document: Document, options?: Schema.ToJsonSchemaOptions) => JsonSchema.Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L770)

Since v4.0.0