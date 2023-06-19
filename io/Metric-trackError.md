# trackError

Returns an aspect that will update this metric with the failure value of
the effects that it is applied to.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const trackError: {
  <Type, In, Out>(metric: Metric<Type, In, Out>): <R, E extends In, A>(
    self: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E extends In, A, Type, In, Out>(self: Effect.Effect<R, E, A>, metric: Metric<Type, In, Out>): Effect.Effect<
    R,
    E,
    A
  >
}
```
