Package: `effect`<br />
Module: `MetricBoundaries`<br />

## MetricBoundaries.exponential

A helper method to create histogram bucket boundaries for a histogram
with exponentially increasing values.

**Signature**

```ts
declare const exponential: (options: { readonly start: number; readonly factor: number; readonly count: number; }) => MetricBoundaries
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricBoundaries.ts#L63)

Since v2.0.0