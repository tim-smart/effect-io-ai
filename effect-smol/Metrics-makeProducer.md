Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.makeProducer

Creates an OpenTelemetry metric producer from Effect metrics.

**Signature**

```ts
declare const makeProducer: (temporality?: TemporalityPreference) => Effect.Effect<MetricProducer, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L35)

Since v1.0.0