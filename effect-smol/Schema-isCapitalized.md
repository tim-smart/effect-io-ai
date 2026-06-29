Package: `effect`<br />
Module: `Schema`<br />

## Schema.isCapitalized

Validates that the first character of a string is unchanged by
`toUpperCase()`.

**Details**

Empty strings pass. Strings whose first character has no lowercase form, such
as a digit, punctuation mark, or whitespace, also pass.

**Signature**

```ts
declare const isCapitalized: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6959)

Since v4.0.0