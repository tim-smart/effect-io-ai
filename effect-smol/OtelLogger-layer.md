Package: `@effect/opentelemetry`<br />
Module: `OtelLogger`<br />

## OtelLogger.layer

Creates a layer that installs the OpenTelemetry-backed Effect logger, merging with existing loggers by default.

**When to use**

Use to install the OpenTelemetry-backed Effect logger in an application that
has an `OtelLoggerProvider`, so standard Effect logging emits OpenTelemetry
log records.

**Details**

The layer installs the logger created by `make`. `mergeWithExisting` defaults
to `true`; set it to `false` to replace the current logger set.

**See**

- `make` for constructing the logger directly
- `layerLoggerProvider` for creating the required logger provider

**Signature**

```ts
declare const layer: (options: { readonly mergeWithExisting?: boolean | undefined; }) => Layer.Layer<never, never, OtelLoggerProvider>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelLogger.ts#L141)

Since v4.0.0