# trackDurationWith

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, you must supply a function
that can convert the `Duration` to the input type of this metric.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const trackDurationWith: {
  <Type, In, Out>(metric: Metric<Type, In, Out>, f: (duration: Duration.Duration) => In): <R, E, A>(
    effect: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E, A, Type, In, Out>(
    self: Effect.Effect<R, E, A>,
    metric: Metric<Type, In, Out>,
    f: (duration: Duration.Duration) => In
  ): Effect.Effect<R, E, A>
}
```
