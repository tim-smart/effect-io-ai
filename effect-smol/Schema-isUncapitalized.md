Package: `effect`<br />
Module: `Schema`<br />

## Schema.isUncapitalized

Validates that a string has its first character in lowercase.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings with the first character in lowercase.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings have the first character in lowercase.

**Signature**

```ts
declare const isUncapitalized: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5391)

Since v4.0.0