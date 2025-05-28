Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.RoundingMode

Rounding modes for `BigDecimal`.

`ceil`: round towards positive infinity
`floor`: round towards negative infinity
`to-zero`: round towards zero
`from-zero`: round away from zero
`half-ceil`: round to the nearest neighbor; if equidistant round towards positive infinity
`half-floor`: round to the nearest neighbor; if equidistant round towards negative infinity
`half-to-zero`: round to the nearest neighbor; if equidistant round towards zero
`half-from-zero`: round to the nearest neighbor; if equidistant round away from zero
`half-even`: round to the nearest neighbor; if equidistant round to the neighbor with an even digit
`half-odd`: round to the nearest neighbor; if equidistant round to the neighbor with an odd digit

**Signature**

```ts
type RoundingMode = | "ceil"
  | "floor"
  | "to-zero"
  | "from-zero"
  | "half-ceil"
  | "half-floor"
  | "half-to-zero"
  | "half-from-zero"
  | "half-even"
  | "half-odd"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1251)

Since v3.16.0