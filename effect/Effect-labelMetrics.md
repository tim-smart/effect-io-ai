# labelMetrics

Tags each metric in this effect with the specific tag.

To import and use `labelMetrics` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.labelMetrics
undefined

**Signature**

```ts
export declare const labelMetrics: {
  (labels: Iterable<MetricLabel.MetricLabel>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, labels: Iterable<MetricLabel.MetricLabel>): Effect<A, E, R>
}
```
