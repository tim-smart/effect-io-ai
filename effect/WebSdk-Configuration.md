Package: `@effect/opentelemetry`<br />
Module: `WebSdk`<br />

## WebSdk.Configuration

Configuration for the Web OpenTelemetry layer, including resource metadata and optional tracing, metrics, and logging settings.

**Signature**

```ts
export interface Configuration {
  readonly spanProcessor?: SpanProcessor | ReadonlyArray<SpanProcessor> | undefined
  readonly tracerConfig?: Omit<TracerConfig, "resource">
  readonly metricReader?: MetricReader | ReadonlyArray<MetricReader> | undefined
  readonly metricTemporality?: Metrics.TemporalityPreference | undefined
  readonly logRecordProcessor?: LogRecordProcessor | ReadonlyArray<LogRecordProcessor> | undefined
  readonly loggerProviderConfig?: Omit<LoggerProviderConfig, "resource"> | undefined
  readonly loggerMergeWithExisting?: boolean | undefined
  readonly resource: {
    readonly serviceName: string
    readonly serviceVersion?: string
    readonly attributes?: Otel.Attributes
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/WebSdk.ts#L33)

Since v4.0.0