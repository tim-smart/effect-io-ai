Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanBigInt

Validates that a BigInt is less than the specified value (exclusive).

**Arbitrary**

When generating test data with fast-check, this applies a `max` constraint
with `maxExcluded: true` to ensure generated BigInts are less than the
specified value.

**Signature**

```ts
declare const isLessThanBigInt: (exclusiveMaximum: bigint, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6257)

Since v4.0.0