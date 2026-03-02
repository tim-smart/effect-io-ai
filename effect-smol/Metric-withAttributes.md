Package: `effect`<br />
Module: `Metric`<br />

## Metric.withAttributes

Returns a new metric that applies the specified attributes to all operations.

Attributes are key-value pairs that provide additional context for metrics,
enabling filtering, grouping, and more detailed analysis. Each combination
of attribute values creates a separate metric series.

**Example**

```ts
import { Effect, Metric } from "effect"

const requestCounter = Metric.counter("http_requests_total", {
  description: "Total HTTP requests"
})

// Create tagged versions of the metric
const getRequests = Metric.withAttributes(requestCounter, {
  method: "GET",
  endpoint: "/api/users"
})

const postRequests = Metric.withAttributes(requestCounter, {
  method: "POST",
  endpoint: "/api/users"
})

const program = Effect.gen(function*() {
  // These will be tracked as separate metric series
  yield* Metric.update(getRequests, 1) // http_requests_total{method="GET", endpoint="/api/users"}
  yield* Metric.update(postRequests, 1) // http_requests_total{method="POST", endpoint="/api/users"}
  yield* Metric.update(getRequests, 1) // Increments the GET counter

  // You can also chain attributes
  const taggedMetric = requestCounter.pipe(
    Metric.withAttributes({ service: "user-api" }),
    Metric.withAttributes({ version: "v1" })
  )

  yield* Metric.update(taggedMetric, 1) // http_requests_total{service="user-api", version="v1"}
})

// When taking snapshots, each attribute combination appears as a separate metric
const viewMetrics = Effect.gen(function*() {
  const snapshots = yield* Metric.snapshot
  for (const metric of snapshots) {
    if (metric.id === "http_requests_total") {
      console.log(`${metric.id}`, metric.attributes, metric.state)
    }
  }
})
```

**Signature**

```ts
declare const withAttributes: { (attributes: Metric.Attributes): <Input, State>(self: Metric<Input, State>) => Metric<Input, State>; <Input, State>(self: Metric<Input, State>, attributes: Metric.Attributes): Metric<Input, State>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2991)

Since v4.0.0