Package: `@effect/opentelemetry`<br />
Module: `Resource`<br />

## Resource.layer

Creates a `Resource` layer from service metadata and additional OpenTelemetry attributes.

**Signature**

```ts
declare const layer: (config: { readonly serviceName: string; readonly serviceVersion?: string; readonly attributes?: OtelApi.Attributes; }) => Layer.Layer<Resource, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Resource.ts#L60)

Since v4.0.0