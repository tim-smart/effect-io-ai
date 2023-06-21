# gauge

Creates a metric key for a gauge, with the specified name.

To import and use `gauge` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.gauge
```

**Signature**

```ts
export declare const gauge: (name: string, description?: string) => MetricKey.Gauge
```
