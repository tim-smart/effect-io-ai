Package: `@effect/opentelemetry`<br />
Module: `Otlp`<br />

## Otlp.layer

Creates an OTLP layer.

**Signature**

```ts
declare const layer: (options: { readonly baseUrl: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; }; readonly headers?: Headers.Input | undefined; readonly maxBatchSize?: number | undefined; readonly replaceLogger?: Logger.Logger<any, any> | undefined; readonly tracerContext?: (<X>(f: () => X, span: Tracer.AnySpan) => X) | undefined; readonly loggerExportInterval?: Duration.DurationInput | undefined; readonly loggerExcludeLogSpans?: boolean | undefined; readonly metricsExportInterval?: Duration.DurationInput | undefined; readonly tracerExportInterval?: Duration.DurationInput | undefined; readonly shutdownTimeout?: Duration.DurationInput | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization.OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Otlp.ts#L23)

Since v1.0.0