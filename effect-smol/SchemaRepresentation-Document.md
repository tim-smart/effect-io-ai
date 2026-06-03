Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Document

A single `Representation` together with its named `References`.

**When to use**

Use when representing a single Schema AST together with its named references
before reconstructing a runtime Schema, converting to JSON Schema, or
wrapping it as a `MultiDocument`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L777)

Since v4.0.0