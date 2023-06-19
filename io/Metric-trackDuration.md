# trackDuration

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, the input type of the metric
must be `Duration`.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const trackDuration: {
  <Type, Out>(metric: Metric<Type, Duration.Duration, Out>): <R, E, A>(
    self: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E, A, Type, Out>(self: Effect.Effect<R, E, A>, metric: Metric<Type, Duration.Duration, Out>): Effect.Effect<
    R,
    E,
    A
  >
}
```
