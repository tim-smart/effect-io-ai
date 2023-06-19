# snapshot

Captures a snapshot of all metrics recorded by the application.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const snapshot: () => Effect.Effect<never, never, HashSet.HashSet<MetricPair.MetricPair.Untyped>>
```
