Package: `effect`<br />
Module: `OtlpLogger`<br />

## OtlpLogger.layer

Layer that installs the OTLP logger created by `make`.

**Details**

By default the OTLP logger is merged with any existing loggers.

**Signature**

```ts
declare const layer: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly maxBatchSize?: number | undefined; readonly shutdownTimeout?: Duration.Input | undefined; readonly excludeLogSpans?: boolean | undefined; readonly mergeWithExisting?: boolean | undefined; }) => Layer.Layer<never, never, HttpClient.HttpClient | OtlpSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpLogger.ts#L106)

Since v4.0.0