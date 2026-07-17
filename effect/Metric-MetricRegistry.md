Package: `effect`<br />
Module: `Metric`<br />

## Metric.MetricRegistry

Context reference for the metric registry in the current context.

**When to use**

Use when you need a custom metric registry for an isolated program or test
instead of the default registry.

**Details**

By default, the reference creates an empty `Map` the first time it is
resolved. Metrics register their metadata and hooks lazily in this map when
they are read or updated.

**Gotchas**

Because `Context.Reference` caches default values, the default `Map` is
shared by contexts that do not provide an override. Provide `MetricRegistry`
with a fresh `Map` when isolation matters.

**See**

- `snapshot` for reading all registered metrics from the current `Effect` context
- `snapshotUnsafe` for reading all registered metrics from an explicit `Context`

**Signature**

```ts
declare const MetricRegistry: Context.Reference<Map<string, Metric.Metadata<any, any>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L1716)

Since v4.0.0