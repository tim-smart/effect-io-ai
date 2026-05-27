Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.makeProducer

Creates an OpenTelemetry metric producer from Effect metrics.

**When to use**

Use to create a `MetricProducer` when you need to wire Effect metrics into
OpenTelemetry manually instead of using the scoped `layer` helper.

**Details**

Requires the current OpenTelemetry `Resource`, captures the current Effect
context, and uses cumulative temporality by default. Pass `"delta"` for
interval-based values.

**See**

- `registerProducer` for attaching a producer to metric readers
- `layer` for creating and registering a producer in a scoped layer

**Signature**

```ts
declare const makeProducer: (temporality?: TemporalityPreference) => Effect.Effect<MetricProducer, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L82)

Since v4.0.0