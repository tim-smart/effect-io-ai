# trackSuccess

Returns an aspect that will update this metric with the success value of
the effects that it is applied to.

To import and use `trackSuccess` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackSuccess
undefined

**Signature**

```ts
export declare const trackSuccess: {
  <Type, In, Out>(
    metric: Metric<Type, In, Out>
  ): <A extends In, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A extends In, E, R, Type, In, Out>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, In, Out>
  ): Effect.Effect<A, E, R>
}
```
