# collectAll

Collects all of the polling metrics into a single polling metric, which
polls for, updates, and produces the outputs of all individual metrics.

To import and use `collectAll` from the "Polling" module:

```ts
import * as Polling from '@effect/io/Metric/Polling'

// Can be accessed like this
Polling.collectAll
```

**Signature**

```ts
export declare const collectAll: <R, E, Out>(
  iterable: Iterable<PollingMetric<any, any, R, E, Out>>
) => PollingMetric<any[], any[], R, E, Out[]>
```
