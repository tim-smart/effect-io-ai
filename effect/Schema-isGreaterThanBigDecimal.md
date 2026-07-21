Package: `effect`<br />
Module: `Schema`<br />

## Schema.isGreaterThanBigDecimal

Validates that a BigDecimal is greater than the specified value (exclusive).

**Signature**

```ts
declare const isGreaterThanBigDecimal: (exclusiveMinimum: BigDecimal_.BigDecimal, annotations?: Annotations.Filter) => SchemaAST.Filter<BigDecimal_.BigDecimal>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7919)

Since v4.0.0