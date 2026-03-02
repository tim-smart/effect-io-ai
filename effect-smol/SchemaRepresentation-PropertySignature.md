Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.PropertySignature

A named property within an `Objects` representation.

- `name` is the property key (string, number, or symbol).
- `isOptional` indicates whether the key can be absent.
- `isMutable` indicates whether the property is mutable (vs. readonly).

**See**

- `Objects`

**Signature**

```ts
export interface PropertySignature {
  readonly name: PropertyKey
  readonly type: Representation
  readonly isOptional: boolean
  readonly isMutable: boolean
  readonly annotations?: Schema.Annotations.Annotations | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L439)

Since v4.0.0