Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.References

A string-keyed map of named `Representation` definitions. Used by
`Document` and `MultiDocument` for `$ref` resolution (analogous
to JSON Schema `$defs`).

**See**

- `Reference`
- `Document`

**Signature**

```ts
export interface References {
  readonly [$ref: string]: Representation
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L721)

Since v4.0.0