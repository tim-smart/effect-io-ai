# labelMetrics

Adds labels to metrics within an effect using `MetricLabel` objects.

**Details**

This function allows you to label metrics using `MetricLabel` objects. Labels
help add structured metadata to metrics for categorization and filtering in
monitoring systems. The provided labels will apply to all metrics within the
effect's execution.

To import and use `labelMetrics` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.labelMetrics
```

**Signature**

```ts
export declare const labelMetrics: {
  (labels: Iterable<MetricLabel.MetricLabel>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, labels: Iterable<MetricLabel.MetricLabel>): Effect<A, E, R>
}
```
