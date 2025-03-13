Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackError

Returns an aspect that will update this metric with the failure value of
the effects that it is applied to.

**Signature**

```ts
declare const trackError: { <Type, In, Out>(metric: Metric<Type, In, Out>): <A, E extends In, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E extends In, R, Type, In, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L624)

Since v2.0.0