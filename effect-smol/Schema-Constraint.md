Package: `effect`<br />
Module: `Schema`<br />

## Schema.Constraint

Lightweight structural constraint for APIs that accept schema values but only
read their data and type-level views.

**When to use**

Use when you need to constrain a generic value to be a schema, but the API
only reads properties such as `ast`, `Type`, `Encoded`, service
requirements, constructor input views, or modifier flags.

**Details**

`Constraint` keeps the schema type identifier and the property surface needed
by schema constructors, while avoiding the full `Bottom` protocol. Use
`Top` when an API calls schema methods such as `annotate`, `check`,
`rebuild`, `make`, or `makeEffect`.

**See**

- `Top` for the complete schema protocol.

**Signature**

```ts
export interface Constraint {
  readonly [TypeId]: typeof TypeId
  readonly "ast": SchemaAST.AST

  readonly "Type": unknown
  readonly "Encoded": unknown
  readonly "DecodingServices": unknown
  readonly "EncodingServices": unknown

  readonly "~type.parameters": any
  readonly "~type.make.in": unknown
  readonly "~type.make": unknown
  readonly "Iso": unknown

  readonly "~type.optionality": Optionality
  readonly "~type.mutability": Mutability
  readonly "~type.constructor.default": ConstructorDefault
  readonly "~encoded.optionality": Optionality
  readonly "~encoded.mutability": Mutability
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L671)

Since v4.0.0