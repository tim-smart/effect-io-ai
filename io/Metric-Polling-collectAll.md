# collectAll

Collects all of the polling metrics into a single polling metric, which
polls for, updates, and produces the outputs of all individual metrics.

Part of the `Polling` module, imported from `@effect/io/Metric/Polling`.

**Signature**

```ts
export declare const collectAll: <R, E, Out>(
  iterable: Iterable<PollingMetric<any, any, R, E, Out>>
) => PollingMetric<any[], any[], R, E, Out[]>
```
