# trackSuccessWith

Returns an aspect that will update this metric with the result of applying
the specified function to the success value of the effects that the aspect is
applied to.

To import and use `trackSuccessWith` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.trackSuccessWith
```

**Signature**

```ts
export declare const trackSuccessWith: {
  <Type, In, Out, In2>(metric: Metric<Type, In, Out>, f: (value: In2) => In): <R, E, A extends In2>(
    self: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E, A extends In2, Type, In, Out, In2>(
    self: Effect.Effect<R, E, A>,
    metric: Metric<Type, In, Out>,
    f: (value: In2) => In
  ): Effect.Effect<R, E, A>
}
```
