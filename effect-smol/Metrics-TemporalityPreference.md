Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.TemporalityPreference

Determines how metric values relate to the time interval over which they
are aggregated.

**Details**

`cumulative` reports total since a fixed start time. Each data point depends
on all previous measurements. This is the default behavior. `delta` reports
changes since the last export. Each interval is independent with no
dependency on previous measurements.

**Signature**

```ts
type TemporalityPreference = "cumulative" | "delta"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L60)

Since v4.0.0