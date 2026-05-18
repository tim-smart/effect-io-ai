Package: `effect`<br />
Module: `Metric`<br />

## Metric.MetricRegistry

`Context.Reference` for the metric registry in the current context.

**Details**
The default registry is an empty `Map`. Metrics register their metadata and
hooks lazily in this map when they are read or updated.

**Signature**

```ts
declare const MetricRegistry: Context.Reference<Map<string, Metric.Metadata<any, any>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1756)

Since v4.0.0