Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Reference

A named reference to a definition in the `References` map.

- `$ref` is the key into `Document.references` or `MultiDocument.references`.
- Resolved lazily by `toSchema` and `toCodeDocument`.
- Throws at runtime if the key is not found in the references map.

**See**

- `References`
- `Document`

**Signature**

```ts
export interface Reference {
  readonly _tag: "Reference"
  readonly $ref: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L161)

Since v4.0.0