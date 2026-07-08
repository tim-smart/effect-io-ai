Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUppercased

Validates that a string is unchanged by JavaScript's `toUpperCase()`.

**Details**

This accepts empty strings and characters that do not have lowercase forms,
such as digits, punctuation, and whitespace. It rejects strings that would
change when uppercased.

**Signature**

```ts
declare const isUppercased: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6939)

Since v4.0.0