Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.AST

Discriminated union of all AST node types.

Every `Schema` has an `.ast` property of this type. Use the guard functions
(`isString`, `isObjects`, etc.) to narrow to a specific variant,
then access variant-specific fields.

- All variants share the `Base` fields: `annotations`, `checks`,
  `encoding`, `context`.
- Discriminate on the `_tag` field (e.g. `"String"`, `"Objects"`, `"Union"`).

**See**

- `Base`
- `isAST`

**Signature**

```ts
type AST = | Declaration
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
  | Suspend
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L114)

Since v4.0.0