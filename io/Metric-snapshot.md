# snapshot

Captures a snapshot of all metrics recorded by the application.

To import and use `snapshot` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.snapshot
```

**Signature**

```ts
export declare const snapshot: () => Effect.Effect<never, never, HashSet.HashSet<MetricPair.MetricPair.Untyped>>
```