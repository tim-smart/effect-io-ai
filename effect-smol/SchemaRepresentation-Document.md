Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Document

A single `Representation` together with its named `References`.

**When to use**

Use when you use `fromAST` to create a `Document` from a Schema AST, `toSchema`
to reconstruct a runtime Schema, `toJsonSchemaDocument` to convert to
JSON Schema, and `toMultiDocument` to wrap it as a
`MultiDocument`.

**See**

- `MultiDocument`
- `fromAST`

**Signature**

```ts
type Document = {
  readonly representation: Representation
  readonly references: References
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L772)

Since v4.0.0