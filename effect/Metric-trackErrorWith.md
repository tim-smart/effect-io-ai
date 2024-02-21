# trackErrorWith

Returns an aspect that will update this metric with the result of applying
the specified function to the error value of the effects that the aspect is
applied to.

To import and use `trackErrorWith` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackErrorWith
```

**Signature**

```ts
export declare const trackErrorWith: {
  <Type, In, Out, In2>(
    metric: Metric<Type, In, Out>,
    f: (error: In2) => In
  ): <A, E extends In2, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E extends In2, R, Type, In, Out, In2>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, In, Out>,
    f: (error: In2) => In
  ): Effect.Effect<A, E, R>
}
```
