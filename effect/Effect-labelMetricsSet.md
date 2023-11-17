# labelMetricsSet

Tags each metric in this effect with the specific tag.

To import and use `labelMetricsSet` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.labelMetricsSet
```

**Signature**

```ts
export declare const labelMetricsSet: {
  (labels: HashSet.HashSet<MetricLabel.MetricLabel>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, labels: HashSet.HashSet<MetricLabel.MetricLabel>): Effect<R, E, A>
}
```
