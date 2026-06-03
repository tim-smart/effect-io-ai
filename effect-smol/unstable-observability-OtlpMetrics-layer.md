Package: `effect`<br />
Module: `OtlpMetrics`<br />

## OtlpMetrics.layer

Layer that starts the OTLP metrics exporter created by `make`.

**Signature**

```ts
declare const layer: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly shutdownTimeout?: Duration.Input | undefined; readonly temporality?: AggregationTemporality | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpMetrics.ts#L468)

Since v4.0.0