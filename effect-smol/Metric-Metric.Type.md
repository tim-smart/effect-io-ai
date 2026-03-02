Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Type

Union type representing all available metric types in the Effect metrics system.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricTypeError extends Data.TaggedError("MetricTypeError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different metric types
  const counter = Metric.counter("requests_total")
  const gauge = Metric.gauge("cpu_usage")
  const frequency = Metric.frequency("status_codes")
  const histogram = Metric.histogram("response_time", {
    boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 10 })
  })
  const summary = Metric.summary("latency", {
    maxAge: "5 minutes",
    maxSize: 1000,
    quantiles: [0.5, 0.95, 0.99]
  })

  // Function that checks metric type
  const getMetricInfo = (metric: Metric.Metric<any, any>) => ({
    name: metric.id,
    type: metric.type
  })

  // Get type information for each metric
  const counterInfo = getMetricInfo(counter) // { name: "requests_total", type: "Counter" }
  const gaugeInfo = getMetricInfo(gauge) // { name: "cpu_usage", type: "Gauge" }
  const frequencyInfo = getMetricInfo(frequency) // { name: "status_codes", type: "Frequency" }
  const histogramInfo = getMetricInfo(histogram) // { name: "response_time", type: "Histogram" }
  const summaryInfo = getMetricInfo(summary) // { name: "latency", type: "Summary" }

  // Pattern match on metric type
  const describeMetric = (type: string): string => {
    switch (type) {
      case "Counter":
        return "Cumulative values that increase over time"
      case "Gauge":
        return "Instantaneous values that can go up or down"
      case "Frequency":
        return "Counts of discrete string occurrences"
      case "Histogram":
        return "Distribution of values across buckets"
      case "Summary":
        return "Quantile calculations over time windows"
      default:
        return "Unknown metric type"
    }
  }

  return {
    metrics: [
      counterInfo,
      gaugeInfo,
      frequencyInfo,
      histogramInfo,
      summaryInfo
    ],
    descriptions: {
      Counter: describeMetric("Counter"),
      Gauge: describeMetric("Gauge"),
      Frequency: describeMetric("Frequency"),
      Histogram: describeMetric("Histogram"),
      Summary: describeMetric("Summary")
    }
  }
})
```

**Signature**

```ts
type Type = "Counter" | "Frequency" | "Gauge" | "Histogram" | "Summary"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1154)

Since v2.0.0