Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackSuccess

Returns an aspect that will update this metric with the success value of
the effects that it is applied to.

**Signature**

```ts
declare const trackSuccess: { <Type, In, Out>(metric: Metric<Type, In, Out>): <A extends In, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A extends In, E, R, Type, In, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L661)

Since v2.0.0