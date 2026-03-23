Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanOrEqualToBigInt

Validates that a BigInt is greater than or equal to the specified value
(inclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `min` constraint
to ensure generated BigInt values are greater than or equal to the specified
value.

**Signature**

```ts
declare const isGreaterThanOrEqualToBigInt: (minimum: bigint, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6132)

Since v4.0.0