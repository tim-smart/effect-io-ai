Package: `effect`<br />
Module: `Otlp`<br />

## Otlp.layerFromConfig

Creates a combined OTLP layer for logs, metrics, and traces from
OpenTelemetry configuration.

**Signature**

```ts
declare const layerFromConfig: (options?: { readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly tracerContext?: (<X>(primitive: Tracer.EffectPrimitive<X>, span: Tracer.AnySpan) => X) | undefined; readonly loggerExcludeLogSpans?: boolean | undefined; readonly loggerMergeWithExisting?: boolean | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization.OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Otlp.ts#L120)

Since v4.0.0