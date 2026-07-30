Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackDurationWith

Returns an aspect that will update this metric with the duration that the
effect takes to execute. To call this method, you must supply a function
that can convert the `Duration` to the input type of this metric.

**Signature**

```ts
declare const trackDurationWith: { <Type, In, Out>(metric: Metric<Type, In, Out>, f: (duration: Duration.Duration) => In): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R, Type, In, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>, f: (duration: Duration.Duration) => In): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L605)

Since v2.0.0