Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.HttpOptions

Options for exporting Prometheus metrics over HTTP.

**Signature**

```ts
export interface HttpOptions extends FormatOptions {
  /**
   * The path to the HTTP route on which Prometheus metrics should be served.
   */
  readonly path?: HttpRouter.PathInput | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L78)

Since v4.0.0