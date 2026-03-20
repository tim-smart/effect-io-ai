Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenBigInt

Validates that a BigInt is within a specified range. The range boundaries can
be inclusive or exclusive based on the provided options.

**Arbitrary**

When generating test data with fast-check, this applies `min` and `max`
constraints to ensure generated BigInt values fall within the specified
range.

**Signature**

```ts
declare const isBetweenBigInt: (options: { readonly minimum: bigint; readonly maximum: bigint; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => AST.Filter<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6220)

Since v4.0.0