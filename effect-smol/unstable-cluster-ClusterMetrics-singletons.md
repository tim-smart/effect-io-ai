Package: `effect`<br />
Module: `ClusterMetrics`<br />

## ClusterMetrics.singletons

Creates a gauge tracking the number of singleton processes currently running on the
current runner.

**Signature**

```ts
declare const singletons: Metric.Gauge<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterMetrics.ts#L48)

Since v4.0.0