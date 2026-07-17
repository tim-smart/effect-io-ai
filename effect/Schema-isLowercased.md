Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLowercased

Validates that a string is unchanged by JavaScript's `toLowerCase()`.

**Details**

This accepts empty strings and characters that do not have uppercase forms,
such as digits, punctuation, and whitespace. It rejects strings that would
change when lowercased.

**Signature**

```ts
declare const isLowercased: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6981)

Since v4.0.0