Package: `effect`<br />
Module: `Schema`<br />

## Schema.isLessThanBigDecimal

Validates that a BigDecimal is less than the specified value (exclusive).

**Signature**

```ts
declare const isLessThanBigDecimal: (exclusiveMaximum: BigDecimal_.BigDecimal, annotations?: Annotations.Filter) => AST.Filter<BigDecimal_.BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6238)

Since v4.0.0