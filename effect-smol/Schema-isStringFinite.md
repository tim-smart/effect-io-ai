Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringFinite

Validates that a string represents a finite number.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings representing finite numbers.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the number string pattern.

**Signature**

```ts
declare const isStringFinite: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5137)

Since v4.0.0