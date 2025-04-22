Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.scale

Scales a given `BigDecimal` to the specified scale.

If the given scale is smaller than the current scale, the value will be rounded down to
the nearest integer.

**Signature**

```ts
declare const scale: { (scale: number): (self: BigDecimal) => BigDecimal; (self: BigDecimal, scale: number): BigDecimal; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L184)

Since v2.0.0