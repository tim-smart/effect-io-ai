Package: `@effect/opentelemetry`<br />
Module: `NodeSdk`<br />

## NodeSdk.Configuration

Configuration for the Node OpenTelemetry layer, including optional tracing, metrics, logging, resource, and shutdown settings.

**Signature**

```ts
export interface Configuration {
  readonly spanProcessor?: SpanProcessor | ReadonlyArray<SpanProcessor> | undefined
  readonly tracerConfig?: Omit<TracerConfig, "resource"> | undefined
  readonly metricReader?: MetricReader | ReadonlyArray<MetricReader> | undefined
  readonly metricTemporality?: Metrics.TemporalityPreference | undefined
  readonly logRecordProcessor?: LogRecordProcessor | ReadonlyArray<LogRecordProcessor> | undefined
  readonly loggerProviderConfig?: Omit<LoggerProviderConfig, "resource"> | undefined
  readonly loggerMergeWithExisting?: boolean | undefined
  readonly resource?: {
    readonly serviceName: string
    readonly serviceVersion?: string
    readonly attributes?: Otel.Attributes
  } | undefined
  readonly shutdownTimeout?: Duration.Input | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/NodeSdk.ts#L35)

Since v4.0.0