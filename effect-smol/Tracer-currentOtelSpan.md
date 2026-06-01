Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.currentOtelSpan

Gets the current OpenTelemetry span.

**Details**

This accessor works with both the official OpenTelemetry API, such as
`Tracer.layer` and `NodeSdk.layer`, and the lightweight OTLP module, such as
`OtlpTracer.layer`. When using OTLP, the returned span is a wrapper that
conforms to the OpenTelemetry `Span` interface.

**Signature**

```ts
declare const currentOtelSpan: Effect.Effect<Otel.Span, Cause.NoSuchElementError, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L261)

Since v4.0.0