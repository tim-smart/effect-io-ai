# labelMetricsScoped

Tags each metric in a scope with a the specific tag.

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
) => Effect<Scope.Scope, never, void>
```
