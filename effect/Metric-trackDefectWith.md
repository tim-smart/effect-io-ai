# trackDefectWith

Returns an aspect that will update this metric with the result of applying
the specified function to the defect throwables of the effects that the
aspect is applied to.

To import and use `trackDefectWith` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackDefectWith
```

**Signature**

```ts
export declare const trackDefectWith: {
  <Type, In, Out>(
    metric: Metric<Type, In, Out>,
    f: (defect: unknown) => In
  ): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R, Type, In, Out>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, In, Out>,
    f: (defect: unknown) => In
  ): Effect.Effect<A, E, R>
}
```
