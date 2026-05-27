Package: `effect`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.runners

Gauge tracking the number of registered cluster runners.

**When to use**

Use to monitor the registered runners currently known to the cluster runtime.

**Gotchas**

The value can lag briefly during membership changes or failure detection.

**See**

- `runnersHealthy` for the healthy-runner subset

**Signature**

```ts
declare const runners: Metric.Gauge<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterMetrics.ts#L75)

Since v4.0.0