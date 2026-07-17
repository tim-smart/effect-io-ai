Package: `effect`<br />
Module: `OtlpLogger`<br />

## OtlpLogger.layerFromConfig

Creates an OTLP logs layer from OpenTelemetry configuration.

**Signature**

```ts
declare const layerFromConfig: (options?: { readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly excludeLogSpans?: boolean | undefined; readonly mergeWithExisting?: boolean | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpLogger.ts#L130)

Since v4.0.0