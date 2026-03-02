Package: `effect`<br />
Module: `Schema`<br />

## Schema.isMultipleOf

Validates that a number is a multiple of the specified divisor.

**JSON Schema**

This check corresponds to the `multipleOf` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies constraints to ensure
generated numbers are multiples of the specified divisor.

**Signature**

```ts
declare const isMultipleOf: (divisor: number, annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4343)

Since v4.0.0