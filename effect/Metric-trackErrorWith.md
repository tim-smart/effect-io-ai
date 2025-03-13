Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackErrorWith

Returns an aspect that will update this metric with the result of applying
the specified function to the error value of the effects that the aspect is
applied to.

**Signature**

```ts
declare const trackErrorWith: { <Type, In, Out, In2>(metric: Metric<Type, In, Out>, f: (error: In2) => In): <A, E extends In2, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E extends In2, R, Type, In, Out, In2>(self: Effect.Effect<A, E, R>, metric: Metric<Type, In, Out>, f: (error: In2) => In): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L642)

Since v2.0.0