# trackDuration

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, the input type of the metric
must be `Duration`.

To import and use `trackDuration` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackDuration
```

**Signature**

```ts
export declare const trackDuration: {
  <Type, Out>(
    metric: Metric<Type, Duration.Duration, Out>
  ): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <R, E, A, Type, Out>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, Duration.Duration, Out>
  ): Effect.Effect<A, E, R>
}
```
