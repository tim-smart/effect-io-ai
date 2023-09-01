# gauge

Creates a metric key for a gauge, with the specified name.

To import and use `gauge` from the "MetricKey" module:

```ts
import * as MetricKey from '@effect/io/MetricKey'

// Can be accessed like this
MetricKey.gauge
```

**Signature**

```ts
export declare const gauge: (name: string, description?: string) => MetricKey.Gauge
```
