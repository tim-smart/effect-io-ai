Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Document

A single `Representation` together with its named `References`.

- Use `fromAST` to create a `Document` from a Schema AST.
- Use `toSchema` to reconstruct a runtime Schema.
- Use `toJsonSchemaDocument` to convert to JSON Schema.
- Use `toMultiDocument` to wrap as a `MultiDocument`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L739)

Since v4.0.0