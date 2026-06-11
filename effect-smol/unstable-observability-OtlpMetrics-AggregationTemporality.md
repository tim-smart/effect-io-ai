Package: `effect`<br />
Module: `OtlpMetrics`<br />

## OtlpMetrics.AggregationTemporality

Determines how metric values relate to the time interval over which they are aggregated.

**Details**

`"cumulative"` reports total since a fixed start time. Each data point depends on all previous measurements. This is the default behavior.

`"delta"` reports changes since the last export. Each interval is independent with no dependency on previous measurements.

**Example** (Configuring aggregation temporality)

```ts
import { OtlpMetrics } from "effect/unstable/observability"

// Use delta temporality for backends that prefer it (e.g., Datadog, Dynatrace)
const metricsLayer = OtlpMetrics.layer({
  url: "http://localhost:4318/v1/metrics",
  temporality: "delta"
})

// Use cumulative temporality for backends like Prometheus
const cumulativeLayer = OtlpMetrics.layer({
  url: "http://localhost:4318/v1/metrics",
  temporality: "cumulative" // This is the default
})
```

**Signature**

```ts
type AggregationTemporality = "cumulative" | "delta"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpMetrics.ts#L62)

Since v4.0.0