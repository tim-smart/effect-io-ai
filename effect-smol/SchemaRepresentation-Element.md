Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Element

A positional element within an `Arrays` tuple.

- `isOptional` indicates whether this element can be absent.
- `type` is the schema representation for this element's value.

**See**

- `Arrays`

**Signature**

```ts
export interface Element {
  readonly isOptional: boolean
  readonly type: Representation
  readonly annotations?: Schema.Annotations.Annotations | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L399)

Since v4.0.0