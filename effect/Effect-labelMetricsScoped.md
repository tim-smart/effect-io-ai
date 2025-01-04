# labelMetricsScoped

Adds labels to metrics within a scope using `MetricLabel` objects.

**Details**

This function allows you to apply labels to all metrics generated within a
specific scope using an array of `MetricLabel` objects. These labels provide
additional metadata to metrics, which can be used for categorization,
filtering, or monitoring purposes. The labels are scoped and will be removed
automatically once the scope is closed, ensuring they are only applied
temporarily within the defined context.

To import and use `labelMetricsScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.labelMetricsScoped
```

**Signature**

```ts
export declare const labelMetricsScoped: (
  labels: ReadonlyArray<MetricLabel.MetricLabel>
) => Effect<void, never, Scope.Scope>
```
