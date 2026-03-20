Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanOrEqualToBigInt

Validates that a BigInt is less than or equal to the specified value
(inclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `max` constraint
to ensure generated BigInt values are less than or equal to the specified
value.

**Signature**

```ts
declare const isLessThanOrEqualToBigInt: (maximum: bigint, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6192)

Since v4.0.0