## trackAll

Returns an aspect that will update this metric with the specified constant
value every time the aspect is applied to an effect, regardless of whether
that effect fails or succeeds.

**Signature**

```ts
declare const trackAll: { <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <Type, In, Out>(self: Metric<Type, In, Out>, input: In): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L537)

Since v2.0.0