Package: `effect`<br />
Module: `OtlpMetrics`<br />

## OtlpMetrics.layerFromConfig

Creates an OTLP metrics layer from OpenTelemetry configuration.

**Signature**

```ts
declare const layerFromConfig: (options?: { readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpMetrics.ts#L475)

Since v4.0.0