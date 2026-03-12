Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBase64

Validates that a string is valid Base64 encoded data.

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
Base64 format.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the Base64 pattern.

**Signature**

```ts
declare const isBase64: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5050)

Since v4.0.0