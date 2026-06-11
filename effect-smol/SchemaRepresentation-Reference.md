Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Reference

A named reference to a definition in the `References` map.

**When to use**

Use when a representation should point to a named definition instead of
embedding the definition inline.

**Details**

`$ref` is the key into `Document.references` or `MultiDocument.references`.
References are resolved lazily by `toSchema` and
`toCodeDocument`.

**Gotchas**

Resolution throws at runtime if the key is not found in the references map.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L104)

Since v4.0.0