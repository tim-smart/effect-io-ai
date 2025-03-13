Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackDuration

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, the input type of the metric
must be `Duration`.

**Signature**

```ts
declare const trackDuration: { <Type, Out>(metric: Metric<Type, Duration.Duration, Out>): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R, Type, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, Duration.Duration, Out>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L587)

Since v2.0.0