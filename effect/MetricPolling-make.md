## make

Constructs a new polling metric from a metric and poll effect.

**Signature**

```ts
declare const make: <Type, In, Out, R, E>(metric: Metric.Metric<Type, In, Out>, poll: Effect.Effect<In, E, R>) => MetricPolling<Type, In, R, E, Out>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L49)

Since v2.0.0