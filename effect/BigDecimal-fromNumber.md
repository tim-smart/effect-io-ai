## ~~fromNumber~~

Creates a `BigDecimal` from a `number` value.

It is not recommended to convert a floating point number to a decimal directly,
as the floating point representation may be unexpected.

Throws a `RangeError` if the number is not finite (`NaN`, `+Infinity` or `-Infinity`).

**Signature**

```ts
declare const fromNumber: (n: number) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L837)

Since v2.0.0