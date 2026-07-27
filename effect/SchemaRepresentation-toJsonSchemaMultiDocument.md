Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toJsonSchemaMultiDocument

Compiles multiple live representations to a shared JSON Schema Draft 2020-12 document.

**When to use**

Use when several representation roots must share the same JSON Schema definitions.

**Gotchas**

Every definition is compiled, including definitions that are not reachable from a root.

**See**

- `toJsonSchemaDocument` for a single root

**Signature**

```ts
declare const toJsonSchemaMultiDocument: (document: MultiDocument, options?: Schema.ToJsonSchemaOptions) => JsonSchema.MultiDocument<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L793)

Since v4.0.0