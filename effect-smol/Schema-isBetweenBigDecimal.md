Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetweenBigDecimal

Validates that a `BigDecimal` is within a specified range.

**Details**

The minimum and maximum boundaries are inclusive by default. Pass
`exclusiveMinimum` or `exclusiveMaximum` to exclude either boundary.

**Signature**

```ts
declare const isBetweenBigDecimal: (options: { readonly minimum: BigDecimal_.BigDecimal; readonly maximum: BigDecimal_.BigDecimal; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => AST.Filter<BigDecimal_.BigDecimal>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7103)

Since v4.0.0