# labelMetricsScopedSet

Tags each metric in a scope with a the specific tag.

To import and use `labelMetricsScopedSet` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.labelMetricsScopedSet
```

**Signature**

```ts
export declare const labelMetricsScopedSet: (
  labels: HashSet.HashSet<MetricLabel.MetricLabel>
) => Effect<Scope.Scope, never, void>
```
