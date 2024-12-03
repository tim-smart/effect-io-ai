# trackError

Returns an aspect that will update this metric with the failure value of
the effects that it is applied to.

To import and use `trackError` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackError
```

**Signature**

```ts
export declare const trackError: {
  <Type, In, Out>(
    metric: Metric<Type, In, Out>
  ): <A, E extends In, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E extends In, R, Type, In, Out>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, In, Out>
  ): Effect.Effect<A, E, R>
}
```
