Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMinLength

Validates that a value has at least the specified length. Works with strings
and arrays.

**JSON Schema**

This check corresponds to the `minLength` constraint for strings or the
`minItems` constraint for arrays in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `minLength`
constraint to ensure generated strings or arrays have at least the required
length.

**Signature**

```ts
declare const isMinLength: (minLength: number, annotations?: Annotations.Filter) => AST.Filter<{ readonly length: number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4845)

Since v4.0.0