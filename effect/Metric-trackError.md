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
  ): <R, E extends In, A>(self: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E extends In, A, Type, In, Out>(
    self: Effect.Effect<R, E, A>,
    metric: Metric<Type, In, Out>
  ): Effect.Effect<R, E, A>
}
```
