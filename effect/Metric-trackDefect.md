Package: `effect`<br />
Module: `Metric`<br />

## Metric.trackDefect

Returns an aspect that will update this metric with the defects of the
effects that it is applied to.

**Signature**

```ts
declare const trackDefect: { <Type, Out>(metric: Metric<Type, unknown, Out>): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R, Type, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, unknown, Out>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L554)

Since v2.0.0