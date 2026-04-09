Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanBigInt

Validates that a BigInt is greater than the specified value (exclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `min` constraint
with `minExcluded: true` to ensure generated BigInts are greater than the
specified value.

**Signature**

```ts
declare const isGreaterThanBigInt: (exclusiveMinimum: bigint, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6080)

Since v4.0.0