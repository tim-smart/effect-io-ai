# unsafeSnapshot

Unsafely captures a snapshot of all metrics recorded by the application.

To import and use `unsafeSnapshot` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.unsafeSnapshot
```

**Signature**

```ts
export declare const unsafeSnapshot: (_: void) => HashSet.HashSet<MetricPair.MetricPair.Untyped>
```
