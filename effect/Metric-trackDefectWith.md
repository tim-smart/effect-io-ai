## trackDefectWith

Returns an aspect that will update this metric with the result of applying
the specified function to the defect throwables of the effects that the
aspect is applied to.

**Signature**

```ts
declare const trackDefectWith: { <Type, In, Out>(metric: Metric<Type, In, Out>, f: (defect: unknown) => In): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R, Type, In, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>, f: (defect: unknown) => In): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L567)

Since v2.0.0