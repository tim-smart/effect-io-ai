Package: `@effect/opentelemetry`<br />
Module: `OtelTracer`<br />

## OtelTracer.makeExternalSpan

Creates an Effect external span from an OpenTelemetry span context, preserving trace flags and trace state when provided.

**Signature**

```ts
declare const makeExternalSpan: (options: { readonly traceId: string; readonly spanId: string; readonly traceFlags?: number | undefined; readonly traceState?: string | Otel.TraceState | undefined; }) => Tracer.ExternalSpan
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelTracer.ts#L127)

Since v4.0.0