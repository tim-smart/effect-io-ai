Package: `effect`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.runnersHealthy

Gauge tracking the number of cluster runners currently considered healthy.

**When to use**

Use to monitor the healthy subset of registered cluster runners.

**Details**

Bigint gauge named `effect_cluster_runners_healthy`.

**Gotchas**

The value reflects the runtime's health-check view and can lag during
membership changes or failure detection.

**See**

- `runners` for the total registered-runner gauge

**Signature**

```ts
declare const runnersHealthy: Metric.Gauge<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterMetrics.ts#L98)

Since v4.0.0