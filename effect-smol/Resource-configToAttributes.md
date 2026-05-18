Package: `@effect/opentelemetry`<br />
Module: `Resource`<br />

## Resource.configToAttributes

Converts resource configuration into OpenTelemetry attributes, adding service name, optional service version, and telemetry SDK metadata.

**Signature**

```ts
declare const configToAttributes: (options: { readonly serviceName: string; readonly serviceVersion?: string; readonly attributes?: OtelApi.Attributes; }) => Record<string, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Resource.ts#L63)

Since v4.0.0