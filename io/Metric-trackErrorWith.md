# trackErrorWith

Returns an aspect that will update this metric with the result of applying
the specified function to the error value of the effects that the aspect is
applied to.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const trackErrorWith: {
  <Type, In, Out, In2>(metric: Metric<Type, In, Out>, f: (error: In2) => In): <R, E extends In2, A>(
    effect: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E extends In2, A, Type, In, Out, In2>(
    self: Effect.Effect<R, E, A>,
    metric: Metric<Type, In, Out>,
    f: (error: In2) => In
  ): Effect.Effect<R, E, A>
}
```
