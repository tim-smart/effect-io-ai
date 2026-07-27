Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Literal

A literal representation.

**Details**

The live representation stores the native literal value. Persistent codecs
add an explicit type discriminator when encoding it.

**Signature**

```ts
export interface Literal extends Keyword<"Literal"> {
  readonly literal: SchemaAST.LiteralValue
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L267)

Since v4.0.0