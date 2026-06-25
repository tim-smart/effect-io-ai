Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUncapitalized

Validates that the first character of a string is unchanged by
`toLowerCase()`.

**Details**

Empty strings pass. Strings whose first character has no uppercase form, such
as a digit, punctuation mark, or whitespace, also pass.

**Signature**

```ts
declare const isUncapitalized: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6986)

Since v4.0.0