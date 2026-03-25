Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMaxLength

Validates that a value has at most the specified length. Works with strings
and arrays.

**JSON Schema**

This check corresponds to the `maxLength` constraint for strings or the
`maxItems` constraint for arrays in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `maxLength`
constraint to ensure generated strings or arrays have at most the required
length.

**Signature**

```ts
declare const isMaxLength: (maxLength: number, annotations?: Annotations.Filter) => AST.Filter<{ readonly length: number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6386)

Since v4.0.0