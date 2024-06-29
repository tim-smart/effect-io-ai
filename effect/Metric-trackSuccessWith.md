# trackSuccessWith

Returns an aspect that will update this metric with the result of applying
the specified function to the success value of the effects that the aspect is
applied to.

To import and use `trackSuccessWith` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackSuccessWith
```

**Signature**

```ts
export declare const trackSuccessWith: {
  <Type, In, Out, In2>(
    metric: Metric<Type, In, Out>,
    f: (value: In2) => In
  ): <A extends In2, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A extends In2, E, R, Type, In, Out, In2>(
    self: Effect.Effect<A, E, R>,
    metric: Metric<Type, In, Out>,
    f: (value: In2) => In
  ): Effect.Effect<A, E, R>
}
```
