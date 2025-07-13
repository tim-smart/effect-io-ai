Package: `effect`<br />
Module: `Effect`<br />

## Effect.labelMetrics

Adds labels to metrics within an effect using `MetricLabel` objects.

**Details**

This function allows you to label metrics using `MetricLabel` objects. Labels
help add structured metadata to metrics for categorization and filtering in
monitoring systems. The provided labels will apply to all metrics within the
effect's execution.

**Signature**

```ts
declare const labelMetrics: { (labels: Iterable<MetricLabel.MetricLabel>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, labels: Iterable<MetricLabel.MetricLabel>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11665)

Since v2.0.0