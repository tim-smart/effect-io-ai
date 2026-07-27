Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromJsonSchemaMultiDocument

Imports multiple JSON Schema Draft 2020-12 roots as runtime schemas with shared definitions.

**When to use**

Use when multiple imported roots must preserve shared definitions, aliases, and recursion.

**Gotchas**

Every definition is translated, including definitions that no root references. Callback results are used directly, and exceptions raised by a callback pass through unchanged.

**See**

- `fromJsonSchemaDocument` for a single root
- `fromSchemaMultiDocument` for converting the result to a representation document

**Signature**

```ts
declare const fromJsonSchemaMultiDocument: (document: JsonSchema.MultiDocument<"draft-2020-12">, options?: FromJsonSchemaOptions) => SchemaMultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L1201)

Since v4.0.0