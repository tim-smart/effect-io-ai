Package: `effect`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.shards

Gauge tracking the number of shards currently acquired by the current runner.

**When to use**

Use to observe shard ownership held by the current runner during startup,
rebalancing, or failover.

**Details**

Bigint gauge named `effect_cluster_shards`, updated from the sharding
acquisition loop using the current acquired shard count.

**Gotchas**

This is runner-local, not a cluster-wide shard total. Aggregate per-runner
values carefully.

**Signature**

```ts
declare const shards: Metric.Gauge<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterMetrics.ts#L121)

Since v4.0.0