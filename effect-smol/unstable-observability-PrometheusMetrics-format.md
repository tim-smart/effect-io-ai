Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.format

Formats all metrics in the registry to Prometheus exposition format.

**Example** (Formatting metrics)

```ts
import { Effect, Metric } from "effect"
import { PrometheusMetrics } from "effect/unstable/observability"

const program = Effect.gen(function*() {
  const counter = Metric.counter("api_requests_total", {
    description: "Total API requests"
  })
  const gauge = Metric.gauge("active_connections", {
    description: "Number of active connections"
  })

  yield* Metric.update(counter, 100)
  yield* Metric.update(gauge, 25)

  // Format without prefix
  const output1 = yield* PrometheusMetrics.format()

  // Format with prefix
  const output2 = yield* PrometheusMetrics.format({ prefix: "myapp" })
})
```

**Signature**

```ts
declare const format: (options?: FormatOptions | undefined) => Effect.Effect<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L134)

Since v4.0.0