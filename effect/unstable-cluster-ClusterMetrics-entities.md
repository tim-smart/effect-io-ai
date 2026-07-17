Package: `effect`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.entities

Creates a gauge tracking the number of active entity instances for each entity type on
the current runner.

**When to use**

Use when instrumenting runner-local entity counts and tagging them by entity
type for cluster dashboards.

**Details**

Bigint gauge named `effect_cluster_entities`, updated with the entity type as
a metric tag.

**Gotchas**

This gauge is runner-local and sampled by the entity manager loop. Aggregate
across runners and expect up to roughly one polling interval of lag.

**See**

- `singletons` for singleton process counts on the current runner
- `shards` for shard ownership on the current runner

**Signature**

```ts
declare const entities: Metric.Gauge<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ClusterMetrics.ts#L39)

Since v4.0.0