# withMetric

Associates a metric with the current effect, updating it as the effect progresses.

To import and use `withMetric` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withMetric
```

**Signature**

```ts
export declare const withMetric: {
  <Type, In, Out>(metric: Metric.Metric<Type, In, Out>): <A extends In, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A extends In, E, R, Type, In, Out>(self: Effect<A, E, R>, metric: Metric.Metric<Type, In, Out>): Effect<A, E, R>
}
```
