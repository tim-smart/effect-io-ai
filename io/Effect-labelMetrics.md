# labelMetrics

Tags each metric in this effect with the specific tag.

To import and use `labelMetrics` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.labelMetrics
```

**Signature**

```ts
export declare const labelMetrics: {
  (labels: Iterable<MetricLabel.MetricLabel>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, labels: Iterable<MetricLabel.MetricLabel>): Effect<R, E, A>
}
```
