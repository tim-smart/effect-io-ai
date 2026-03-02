Package: `effect`<br />
Module: `index`<br />

## index.PrometheusMetrics

Re-exports all named exports from the "./PrometheusMetrics.ts" module as `PrometheusMetrics`.

**Example**

```ts
import { Effect, Metric } from "effect"
import * as PrometheusMetrics from "effect/unstable/observability/PrometheusMetrics"

const program = Effect.gen(function*() {
  // Create and update metrics
  const counter = Metric.counter("http_requests_total", {
    description: "Total HTTP requests"
  })
  yield* Metric.update(counter, 42)

  // Format metrics for Prometheus
  const output = yield* PrometheusMetrics.format()
  console.log(output)
  // # HELP http_requests_total Total HTTP requests
  // # TYPE http_requests_total counter
  // http_requests_total 42
})
```

**Signature**

```ts
export * as PrometheusMetrics from "./PrometheusMetrics.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L71)

Since v4.0.0