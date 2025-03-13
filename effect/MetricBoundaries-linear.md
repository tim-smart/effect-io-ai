Package: `effect`<br />
Module: `MetricBoundaries`<br />

## MetricBoundaries.linear

A helper method to create histogram bucket boundaries for a histogram
with linear increasing values.

**Signature**

```ts
declare const linear: (options: { readonly start: number; readonly width: number; readonly count: number; }) => MetricBoundaries
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricBoundaries.ts#L48)

Since v2.0.0