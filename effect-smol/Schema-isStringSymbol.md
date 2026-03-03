Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringSymbol

Validates that a string represents a valid Symbol (can be parsed as a Symbol).

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
strings representing Symbol values.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the Symbol string pattern.

**Signature**

```ts
declare const isStringSymbol: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3559)

Since v4.0.0