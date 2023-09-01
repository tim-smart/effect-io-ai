# collectAll

Collects all of the polling metrics into a single polling metric, which
polls for, updates, and produces the outputs of all individual metrics.

To import and use `collectAll` from the "MetricPolling" module:

```ts
import * as MetricPolling from '@effect/io/MetricPolling'

// Can be accessed like this
MetricPolling.collectAll
```

**Signature**

```ts
export declare const collectAll: <R, E, Out>(
  iterable: Iterable<PollingMetric<any, any, R, E, Out>>
) => PollingMetric<any[], any[], R, E, Out[]>
```
