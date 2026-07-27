Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromSchemaMultiDocument

Converts live schemas and their named definitions to a shared representation document.

**When to use**

Use when schemas with shared or unreachable definitions must be passed to representation compilers such as `toCodeDocument`.

**Gotchas**

Every schema is projected to its encoded side. Definitions are preserved even when no root reaches them.

**See**

- `toRepresentations` for converting AST roots without an explicit definition map
- `toCodeDocument` for generating code from the result

**Signature**

```ts
declare const fromSchemaMultiDocument: (document: SchemaMultiDocument) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L733)

Since v4.0.0