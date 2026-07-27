Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.layerFromConfig

Creates an OTLP traces layer from OpenTelemetry configuration.

**Signature**

```ts
declare const layerFromConfig: (options?: { readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly context?: (<X>(primitive: Tracer.EffectPrimitive<X>, span: Tracer.AnySpan) => X) | undefined; }) => Layer.Layer<Exporter.Flusher, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpTracer.ts#L149)

Since v4.0.0