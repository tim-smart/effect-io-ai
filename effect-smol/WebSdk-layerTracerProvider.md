Package: `@effect/opentelemetry`<br />
Module: `WebSdk`<br />

## WebSdk.layerTracerProvider

Creates a scoped Web OpenTelemetry tracer provider from one or more span processors and shuts it down when the layer is released.

**Signature**

```ts
declare const layerTracerProvider: (processor: SpanProcessor | NonEmptyReadonlyArray<SpanProcessor>, config?: Omit<TracerConfig, "resource">) => Layer.Layer<Tracer.OtelTracerProvider, never, Resource.Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/WebSdk.ts#L72)

Since v4.0.0