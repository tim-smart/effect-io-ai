Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanBigInt

Validates that a BigInt is less than the specified value (exclusive).

**Details**

Arbitrary:

When generating test data with fast-check, this applies a `max` constraint of
`exclusiveMaximum - 1n` to ensure generated BigInts are less than the
specified value.

**Signature**

```ts
declare const isLessThanBigInt: (exclusiveMaximum: bigint, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7203)

Since v4.0.0