Package: `effect`<br />
Module: `MetricPolling`<br />

## MetricPolling.pollAndUpdate

An effect that polls for a value and uses the value to update the metric.

**Signature**

```ts
declare const pollAndUpdate: <Type, In, R, E, Out>(self: MetricPolling<Type, In, R, E, Out>) => Effect.Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L99)

Since v2.0.0