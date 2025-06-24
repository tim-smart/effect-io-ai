Package: `effect`<br />
Module: `Effect`<br />

## Effect.labelMetricsScoped

Adds labels to metrics within a scope using `MetricLabel` objects.

**Details**

This function allows you to apply labels to all metrics generated within a
specific scope using an array of `MetricLabel` objects. These labels provide
additional metadata to metrics, which can be used for categorization,
filtering, or monitoring purposes. The labels are scoped and will be removed
automatically once the scope is closed, ensuring they are only applied
temporarily within the defined context.

**Signature**

```ts
declare const labelMetricsScoped: (labels: ReadonlyArray<MetricLabel.MetricLabel>) => Effect<void, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11708)

Since v2.0.0