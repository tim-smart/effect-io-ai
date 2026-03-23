Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLengthBetween

Validates that a value's length is within the specified range. Works with
strings and arrays.

**JSON Schema**

This check corresponds to `minLength`/`maxLength` constraints for strings
or `minItems`/`maxItems` constraints for arrays in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies `minLength` and
`maxLength` constraints to ensure generated strings or arrays have a length
within the specified range.

**Signature**

```ts
declare const isLengthBetween: (minimum: number, maximum: number, annotations?: Annotations.Filter) => AST.Filter<{ readonly length: number; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6420)

Since v4.0.0