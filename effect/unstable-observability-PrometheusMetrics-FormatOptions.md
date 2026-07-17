Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.FormatOptions

Options for formatting metrics.

**Signature**

```ts
export interface FormatOptions {
  /**
   * Optional prefix to prepend to all metric names.
   * The prefix will be sanitized and joined with an underscore.
   */
  readonly prefix?: string | undefined
  /**
   * Optional function to transform metric names before sanitization.
   */
  readonly metricNameMapper?: MetricNameMapper | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PrometheusMetrics.ts#L41)

Since v4.0.0