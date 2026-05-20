Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.PropertySignature

A named property within an `Objects` representation.

**Details**

`name` is the property key, which can be a string, number, or symbol.
`isOptional` indicates whether the key can be absent. `isMutable` indicates
whether the property is mutable rather than readonly.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L464)

Since v4.0.0