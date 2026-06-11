Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.MetricNameMapper

A function that transforms metric names before formatting.

**Example** (Mapping metric names)

```ts
import type { PrometheusMetrics } from "effect/unstable/observability"

// Convert camelCase to snake_case
const mapper: PrometheusMetrics.MetricNameMapper = (name) =>
  name.replace(/([a-z])([A-Z])/g, "$1_$2").toLowerCase()
```

**Signature**

```ts
type MetricNameMapper = (name: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L33)

Since v4.0.0