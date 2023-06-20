# gauge

A gauge, which can be set to a value.

To import and use `gauge` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.gauge
```

**Signature**

```ts
export declare const gauge: (name: string) => Metric.Gauge<number>
```
