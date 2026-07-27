Package: `effect`<br />
Module: `OtlpMetrics`<br />

## OtlpMetrics.layerFromConfig

Creates an OTLP metrics layer from OpenTelemetry configuration.

**Signature**

```ts
declare const layerFromConfig: (options?: { readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; }) => Layer.Layer<Exporter.Flusher, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpMetrics.ts#L479)

Since v4.0.0