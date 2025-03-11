## collectAll

Collects all of the polling metrics into a single polling metric, which
polls for, updates, and produces the outputs of all individual metrics.

**Signature**

```ts
declare const collectAll: <R, E, Out>(iterable: Iterable<MetricPolling<any, any, R, E, Out>>) => MetricPolling<Array<any>, Array<any>, R, E, Array<Out>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L61)

Since v2.0.0