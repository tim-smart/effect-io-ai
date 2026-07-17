Package: `@effect/opentelemetry`<br />
Module: `OtelLogger`<br />

## OtelLogger.layerLoggerProvider

Creates a scoped OpenTelemetry logger provider from one or more log record processors, using the current `Resource` and flushing and shutting down the provider when the layer is released.

**Signature**

```ts
declare const layerLoggerProvider: (processor: Otel.LogRecordProcessor | NonEmptyReadonlyArray<Otel.LogRecordProcessor>, config?: Omit<Otel.LoggerProviderConfig, "resource"> & { readonly shutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<OtelLoggerProvider, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelLogger.ts#L167)

Since v4.0.0