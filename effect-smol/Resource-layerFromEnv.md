Package: `@effect/opentelemetry`<br />
Module: `Resource`<br />

## Resource.layerFromEnv

Creates a `Resource` layer from OpenTelemetry environment variables, optionally merging additional attributes.

**Signature**

```ts
declare const layerFromEnv: (additionalAttributes?: OtelApi.Attributes | undefined) => Layer.Layer<Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Resource.ts#L126)

Since v4.0.0