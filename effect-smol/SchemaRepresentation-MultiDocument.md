Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.MultiDocument

One or more `Representation`s sharing a common `References` map.

**When to use**

Use when you use `fromASTs` to create this from multiple Schema ASTs,
`toCodeDocument` to generate TypeScript code, and
`toJsonSchemaMultiDocument` to convert to JSON Schema.

**See**

- `Document`
- `fromASTs`

**Signature**

```ts
type MultiDocument = {
  readonly representations: readonly [Representation, ...Array<Representation>]
  readonly references: References
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L791)

Since v4.0.0