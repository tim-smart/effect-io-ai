Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.fromConfig

Creates an OTLP resource from explicit options and OpenTelemetry
configuration.

Explicit options override `OTEL_RESOURCE_ATTRIBUTES`, `OTEL_SERVICE_NAME`,
and `OTEL_SERVICE_VERSION`; missing required configuration is converted to a
defect.

**Signature**

```ts
declare const fromConfig: (options?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown> | undefined; } | undefined) => Effect.Effect<Resource>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L90)

Since v4.0.0