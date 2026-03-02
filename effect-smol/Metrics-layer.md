Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.layer

Creates a Layer that registers a metric producer with metric readers.

**Example**

```ts
import { Metrics } from "@effect/opentelemetry"
import { PeriodicExportingMetricReader } from "@opentelemetry/sdk-metrics"
import { OTLPMetricExporter } from "@opentelemetry/exporter-metrics-otlp-http"

const metricExporter = new OTLPMetricExporter({ url: "<your-otel-url>" })

// Use delta temporality for backends like Datadog or Dynatrace
const metricsLayer = Metrics.layer(
  () => new PeriodicExportingMetricReader({
    exporter: metricExporter,
    exportIntervalMillis: 10000
  }),
  { temporality: "delta" }
)

// Use cumulative temporality for backends like Prometheus (default)
const cumulativeLayer = Metrics.layer(
  () => new PeriodicExportingMetricReader({ exporter: metricExporter }),
  { temporality: "cumulative" }
)
```

**Signature**

```ts
declare const layer: (evaluate: LazyArg<MetricReader | Arr.NonEmptyReadonlyArray<MetricReader>>, options?: { readonly shutdownTimeout?: Duration.Input | undefined; readonly temporality?: TemporalityPreference | undefined; }) => Layer.Layer<never, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L104)

Since v1.0.0