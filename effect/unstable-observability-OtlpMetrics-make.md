Package: `effect`<br />
Module: `OtlpMetrics`<br />

## OtlpMetrics.make

Starts a scoped OTLP metrics exporter.

**Details**

The exporter snapshots registered Effect metrics on the configured interval, serializes them with the selected aggregation temporality, and flushes during scope finalization up to `shutdownTimeout`.

**Signature**

```ts
declare const make: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly shutdownTimeout?: Duration.Input | undefined; readonly temporality?: AggregationTemporality | undefined; }) => Effect.Effect<void, never, HttpClient.HttpClient | OtlpSerialization | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpMetrics.ts#L74)

Since v4.0.0