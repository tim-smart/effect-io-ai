Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringBigInt

Validates that a string represents a valid BigInt (can be parsed as a BigInt).

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings representing BigInt values.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the BigInt string pattern.

**Signature**

```ts
declare const isStringBigInt: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5155)

Since v4.0.0