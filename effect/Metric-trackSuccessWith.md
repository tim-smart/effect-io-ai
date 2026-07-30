Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackSuccessWith

Returns an aspect that will update this metric with the result of applying
the specified function to the success value of the effects that the aspect is
applied to.

**Signature**

```ts
declare const trackSuccessWith: { <Type, In, Out, A>(metric: Metric<Type, In, Out>, f: (value: Types.NoInfer<A>) => In): <E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R, Type, In, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>, f: (value: Types.NoInfer<A>) => In): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L679)

Since v2.0.0