Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.layerHttp

Creates a Layer that registers a `/metrics` HTTP endpoint for Prometheus
scraping.

This layer automatically adds a GET route to your HTTP router that serves
metrics in Prometheus exposition format. By default, the endpoint is
registered at `/metrics`, but this can be customized via the `path` option.

**Example**

```ts
import * as PrometheusMetrics from "effect/unstable/observability/PrometheusMetrics"

// Create a layer that adds /metrics endpoint to the router
const PrometheusLayer = PrometheusMetrics.layerHttp()

// Or customize the path and add a prefix to all metric names
const CustomPrometheusLayer = PrometheusMetrics.layerHttp({
  path: "/prometheus/metrics",
  prefix: "myapp"
})
```

**Signature**

```ts
declare const layerHttp: (options?: HttpOptions | undefined) => Layer.Layer<never, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L186)

Since v4.0.0