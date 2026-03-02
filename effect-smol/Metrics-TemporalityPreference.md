Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.TemporalityPreference

Determines how metric values relate to the time interval over which they
are aggregated.

- `cumulative`: Reports total since a fixed start time. Each data point
  depends on all previous measurements. This is the default behavior.

- `delta`: Reports changes since the last export. Each interval is
  independent with no dependency on previous measurements.

**Signature**

```ts
type TemporalityPreference = "cumulative" | "delta"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L27)

Since v1.0.0