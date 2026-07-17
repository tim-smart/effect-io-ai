Package: `effect`<br />
Module: `OtlpLogger`<br />

## OtlpLogger.make

Creates an Effect `Logger` that exports log records through OTLP.

**Details**

The logger serializes records with the configured resource, sends them
through the OTLP exporter, and requires `Scope` so pending records can be
flushed on shutdown.

**Signature**

```ts
declare const make: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly maxBatchSize?: number | undefined; readonly shutdownTimeout?: Duration.Input | undefined; readonly excludeLogSpans?: boolean | undefined; }) => Effect.Effect<Logger.Logger<unknown, void>, never, OtlpSerialization | HttpClient.HttpClient | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpLogger.ts#L43)

Since v4.0.0