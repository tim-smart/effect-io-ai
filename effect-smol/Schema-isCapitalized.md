Package: `effect`<br />
Module: `Schema`<br />

## Schema.isCapitalized

Validates that a string has its first character in uppercase.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings with the first character in uppercase.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings have the first character in uppercase.

**Signature**

```ts
declare const isCapitalized: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5526)

Since v4.0.0