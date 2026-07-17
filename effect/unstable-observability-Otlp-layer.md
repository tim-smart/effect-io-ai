Package: `effect`<br />
Module: `Otlp`<br />

## Otlp.layer

Creates a combined OTLP layer for logs, metrics, and traces.

**Details**

The layer sends data to `/v1/logs`, `/v1/metrics`, and `/v1/traces` below
`baseUrl` and requires an `OtlpSerialization` implementation.

**Signature**

```ts
declare const layer: (options: { readonly baseUrl: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly maxBatchSize?: number | undefined; readonly tracerContext?: (<X>(primitive: Tracer.EffectPrimitive<X>, span: Tracer.AnySpan) => X) | undefined; readonly loggerExportInterval?: Duration.Input | undefined; readonly loggerExcludeLogSpans?: boolean | undefined; readonly loggerMergeWithExisting?: boolean | undefined; readonly metricsExportInterval?: Duration.Input | undefined; readonly metricsTemporality?: AggregationTemporality | undefined; readonly tracerExportInterval?: Duration.Input | undefined; readonly shutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization.OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Otlp.ts#L35)

Since v4.0.0