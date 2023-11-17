# trackDurationWith

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, you must supply a function
that can convert the `Duration` to the input type of this metric.

To import and use `trackDurationWith` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackDurationWith
```

**Signature**

```ts
export declare const trackDurationWith: {
  <Type, In, Out>(
    metric: Metric<Type, In, Out>,
    f: (duration: Duration.Duration) => In
  ): <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E, A, Type, In, Out>(
    self: Effect.Effect<R, E, A>,
    metric: Metric<Type, In, Out>,
    f: (duration: Duration.Duration) => In
  ): Effect.Effect<R, E, A>
}
```
