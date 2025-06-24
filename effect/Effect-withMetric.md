Package: `effect`<br />
Module: `Effect`<br />

## Effect.withMetric

Associates a metric with the current effect, updating it as the effect progresses.

**Signature**

```ts
declare const withMetric: { <Type, In, Out>(metric: Metric.Metric<Type, In, Out>): <A extends In, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A extends In, E, R, Type, In, Out>(self: Effect<A, E, R>, metric: Metric.Metric<Type, In, Out>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11726)

Since v2.0.0