# pollAndUpdate

An effect that polls for a value and uses the value to update the metric.

Part of the `Polling` module, imported from `@effect/io/Metric/Polling`.

**Signature**

```ts
export declare const pollAndUpdate: <Type, In, R, E, Out>(
  self: PollingMetric<Type, In, R, E, Out>
) => Effect.Effect<R, E, void>
```
