Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Representation

The core tagged union of all supported schema shapes.

Each variant has a `_tag` discriminator. Switch on `_tag` to handle each
shape. Most variants carry optional `annotations` and some carry `checks`
for validation constraints.

**See**

- `Document`
- `fromAST`

**Signature**

```ts
type Representation = | Declaration
  | Reference
  | Suspend
  | Null
  | Undefined
  | Void
  | Never
  | Unknown
  | Any
  | String
  | Number
  | Boolean
  | BigInt
  | Symbol
  | Literal
  | UniqueSymbol
  | ObjectKeyword
  | Enum
  | TemplateLiteral
  | Arrays
  | Objects
  | Union
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L493)

Since v4.0.0