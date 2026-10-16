Package: `@effect/cluster`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.shardReleaseDuration

Time taken to release a shard after it is reassigned or its lock is lost,
from entity teardown until the release completes. Includes retries and any
wait for shard lock storage to recover.

Only successful releases are recorded. Shutdown handoff and forced releases
are not.

**Signature**

```ts
declare const shardReleaseDuration: Metric.Metric<MetricKeyType.Histogram, Duration, MetricState.Histogram>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ClusterMetrics.ts#L57)

Since v1.0.0