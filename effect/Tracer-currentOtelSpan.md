Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.currentOtelSpan

Get the current OpenTelemetry span.

Works with both the official OpenTelemetry API (via `Tracer.layer`, `NodeSdk.layer`, etc.)
and the lightweight OTLP module (`OtlpTracer.layer`).

When using OTLP, the returned span is a wrapper that conforms to the
OpenTelemetry `Span` interface.

**Signature**

```ts
declare const currentOtelSpan: Effect<Otel.Span, NoSuchElementException, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L44)

Since v1.0.0